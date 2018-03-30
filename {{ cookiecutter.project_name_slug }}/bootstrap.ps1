#In case of error, set privileges with:
#   Set-ExecutionPolicy -Scope CurrentUser Unrestricted


$DOCKER_IMAGE="{{cookiecutter.group_name_slug}}/{{cookiecutter.project_name_slug}}"


### Fix code for all projects ###

$DOCKER_BASE_IMAGE = cat Dockerfile | Select-String -Pattern  FROM  | %{$_ -replace "FROM\s*", ""}


$LOCAL_WORKING_DIRECTORY = Convert-Path .
$DOCKER_WORKING_DIRECTORY = "/home/arnold/project"
$DOCKER_HOSTNAME = [io.path]::GetFileName($pwd.Path)| %{$_ -replace "\.", "_"}

$DOCKER_IMAGE_DATE = docker inspect ${DOCKER_IMAGE} | Select-String -Pattern  created |
 %{$_ -replace "^.*: .", ""} | %{$_ -replace ".,.*$", ""}
$DOCKER_BASE_IMAGE_DATE =  docker inspect ${DOCKER_BASE_IMAGE} | Select-String -Pattern  created |
 %{$_ -replace "^.*: .", ""} | %{$_ -replace ".,.*$", ""}
 
 
$DOCKER_IMAGE_DATE = [DateTime]::Parse($DOCKER_IMAGE_DATE)
$DOCKER_BASE_IMAGE_DATE = [DateTime]::Parse($DOCKER_BASE_IMAGE_DATE)



function launchImage
{
	if ($DOCKER_IMAGE_DATE -lt $DOCKER_BASE_IMAGE_DATE) {
		Write-Output "Project container is oldest than base container."
		Write-Output "Please wait while rebuilding it..."
		buildImage
	}
	docker run -v ${LOCAL_WORKING_DIRECTORY}:${DOCKER_WORKING_DIRECTORY} -w ${DOCKER_WORKING_DIRECTORY} -h ${DOCKER_HOSTNAME} --rm=true -i -t ${DOCKER_IMAGE}
}

function buildImage
{
    docker build -t ${DOCKER_IMAGE} . 
}

if ($args.count -eq 0) {
	launchImage
}
else {
	if ($args[ 0 ] -eq "rebuildImage") {
		buildImage
	}
	else {
		Write-Output "Error, parameter not handled";
	}
}
