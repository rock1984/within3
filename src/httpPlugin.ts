const setHttpPlugin = {

    async requestDidStart() {

        return {
            async willSendResponse({ response }) {
                response.http.headers.set('Custom-Header', 'hello');
                if (response?.errors?.[0]?.message === 'ZipCode not found') {
                    response.http.status = 404;
                }
            }
        };
    }

};

export default setHttpPlugin;