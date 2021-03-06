# --------------------------------------------------------
#  Copyright (C) 2004-2020 by EMGU Corporation. All rights reserved.
# --------------------------------------------------------

IF ( TARGET Emgu.TF.Lite.Models.Netstandard )
  
  PROJECT(Emgu.TF.Lite.Models.nuget)
  
#  IF(WIN32)
#    ADD_CUSTOM_TARGET(
#      ${PROJECT_NAME} ALL
#      COMMAND "${CMAKE_CURRENT_SOURCE_DIR}/../../../miscellaneous/nuget.exe" pack Package.nuspec -OutputDirectory "${CMAKE_CURRENT_SOURCE_DIR}/../"
#      )
#  ELSE()
#    ADD_CUSTOM_TARGET(
#      ${PROJECT_NAME} ALL
#      COMMAND mono "${CMAKE_CURRENT_SOURCE_DIR}/../../../miscellaneous/nuget.exe" pack Package.nuspec -OutputDirectory "${CMAKE_CURRENT_SOURCE_DIR}/../"
#      )
#  ENDIF()

    ADD_CUSTOM_TARGET(
      ${PROJECT_NAME} ALL
      COMMAND ${DOTNET_EXECUTABLE} pack -c ${DEFAULT_CS_CONFIG} "${CMAKE_CURRENT_SOURCE_DIR}/../../../Emgu.TF.Lite.Models/Emgu.TF.Lite.Models.Netstandard/Emgu.TF.Lite.Models.Netstandard.csproj" -p:NuspecFile="${CMAKE_CURRENT_SOURCE_DIR}/Package.nuspec" -o "${CMAKE_CURRENT_SOURCE_DIR}/../"
      WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
      )

  ADD_DEPENDENCIES(${PROJECT_NAME} Emgu.TF.Lite.Models.Netstandard Emgu.TF.Lite.nuget)
  
  IF(TARGET Emgu.TF.Lite.Models.Mac)
    ADD_DEPENDENCIES(${PROJECT_NAME} Emgu.TF.Lite.Models.Mac)
  ENDIF()

  IF(TARGET Emgu.TF.Lite.Models.Android)
    ADD_DEPENDENCIES(${PROJECT_NAME} Emgu.TF.Lite.Models.Android)
  ENDIF()
  
  IF(TARGET Emgu.TF.Lite.Models.IOS)
    ADD_DEPENDENCIES(${PROJECT_NAME} Emgu.TF.Lite.Models.IOS)
  ENDIF()
  
  if(ENABLE_SOLUTION_FOLDERS)
    set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "NUGET")
  endif() 
  
ENDIF()
