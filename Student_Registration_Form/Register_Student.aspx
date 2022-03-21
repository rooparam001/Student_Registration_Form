<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Student.aspx.cs" Inherits="Student_Registration_Form.Register_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Data</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="Student.js"></script>

    <style>
        table {
            font-family:Arial,sans-serif;
            border-collapse:collapse;
            width: 650px;
            margin-left:200px;
            border:1px solid black;
        } 
        th, td{
          border:1px solid black;
          text-align:center;
          font-size:25px;
          cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="container col-md-8">
			
			<div class="row">
				<h2>Register Student</h2>
			</div>
              <div style="height:2rem"></div>
			
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputStdfirstName">Student First Name</label>
                  <input type="text" class="form-control" id="inputStdfirstName" placeholder="Enter your first name"/>
                </div>
                  <div class="form-group col-md-6">
                  <label for="inputStdlastName">Student Last Name</label>
                  <input type="text" class="form-control" id="inputStdlastName" placeholder="Enter your first name"/>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputClass">Class</label>
                  <input type="text" class="form-control" id="inputClass" placeholder="Enter your Class"/>
                </div>
              </div>
              
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputRoll">Roll Number</label>
                  <input type="text" class="form-control" id="inputRoll" placeholder="Enter your Roll Number"/>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputpercentage">Percentage</label>
                  <input type="text" class="form-control" id="inputpercentage" placeholder="Enter your percentage"/>
                </div>
              </div>
              <div style="height:2rem"></div>
              <%--<div class="row row-cols-3">
                     
              </div>--%>

                 <div class="d-grid gap-2 d-md-block">
                     <button type="submit" class="btn btn-primary" onclick="func_Save()" id="save_btn">Save</button>
                     <button type="submit" class="btn btn-primary" onclick="func_Reset()" id="reset_btn">Reset</button>
                 </div>

                 <table id="student_table" class="table table-striped m-3">
                   <thead>
                     <tr>
                       <th scope="col">#</th>
                       <th scope="col">First Name</th>
                       <th scope="col">Last Name</th>
                       <th scope="col">Class</th>
                     </tr>
                   </thead>
                     <tbody></tbody>
                 </table>

		 </div>
        </div>
    </form>
</body>
</html>
