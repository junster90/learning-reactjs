r = React.DOM

form =
	r.div
		className: "task-form col-md-6 col-md-offset-3"
		r.form
			className: "form-group"
			r.label
				"Task title"
			r.input
				className: "form-control"
		r.button
			className: "btn btn-md btn-default"
			"Submit"

addBtn = React.createClass
	getInitialState: ->
		clicked: false
	btnClicked: (event) ->
		@setState(clicked: true)
	render: ->
		if @state.clicked
			form
		else
			r.div
				className: "add-task col-md-offset-3"
				r.button
					className: "btn btn-md btn-default"
					onClick: @btnClicked
					"+"

content = 
	r.div
		className: "container"
		React.createElement(addBtn, null)
	

$ ->
	ReactDOM.render(
		content,
		document.getElementById("react-target")
	)