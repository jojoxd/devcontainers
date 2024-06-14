set -e

. ./library_scripts.sh

if [ "${VERSION}" == "latest" ] || [ "${VERSION}" == "stable" ]; then
    clean_download "https://cdn.dl.k8s.io/release/${VERSION}.txt" kubectl_version

    VERSION=$(cat kubectl_version)
    rm kubectl_version
fi

case "${VERSION}" in
    v*) ;;
    *)
        VERSION="v${VERSION}"
    ;;
esac

clean_download "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl" /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

echo 'Done!'
