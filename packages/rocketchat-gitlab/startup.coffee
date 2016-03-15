RocketChat.settings.addGroup 'OAuth', ->
	@section 'GitLab', ->
		enableQuery = {_id: 'Accounts_OAuth_Gitlab', value: true}
		@add 'Accounts_OAuth_Gitlab', false, { type: 'boolean', public: true }
		@add 'API_Gitlab_URL', '', { type: 'string', enableQuery: enableQuery, public: true}
		@add 'Accounts_OAuth_Gitlab_id', '', { type: 'string', enableQuery: enableQuery }
		@add 'Accounts_OAuth_Gitlab_secret', '', { type: 'string', enableQuery: enableQuery }
		@add 'Accounts_OAuth_Gitlab_callback_url', __meteor_runtime_config__?.ROOT_URL + '_oauth/gitlab', { type: 'string', blocked: true }
