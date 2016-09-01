#tag Class
Protected Class ToDoController
	#tag Method, Flags = &h0
		Sub Add(title as String)
		  self.listView.AddRow("", title)
		  dim ti as TaskItem = new TaskItem
		  ti.title = title
		  self.listModel.AddTask(ti)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  self.listModel = new ToDoList
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		listModel As ToDoList
	#tag EndProperty

	#tag Property, Flags = &h0
		listView As Listbox
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
