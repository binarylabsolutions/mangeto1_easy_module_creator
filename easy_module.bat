@echo off
setlocal EnableDelayedExpansion

echo this plugin help you easly create the base module structue of magneto 1.x
echo[
echo just enter the module NameSpace and Name of the module to get Started
echo[

SET  /p ns="Enter NameSpace "
SET  /p module="Enter module "



IF NOT EXIST app MKDIR  app
chdir  app 

	IF NOT EXIST etc MKDIR  etc
	chdir  etc 
		
		IF NOT EXIST modules MKDIR  modules
		chdir  modules

			SET  filename=%ns%_%module%.xml
			set "line=<?xml version="1.0"?>"
			echo !line! > %filename%
				set "line=<config>"
				echo !line! >> %filename%
					
					set "line=	<modules>"
					echo !line! >> %filename%

						set "line=		<%ns%_%module%>"
						echo !line! >> %filename%
			
							set "line=			<codePool>local</codePool>"
							echo !line! >> %filename%
				
							set "line=			<active>true</active>"
							echo !line! >> %filename%
		
						set "line=		</%ns%_%module%>"
						echo !line! >> %filename%
	
				set "line=	</modules>"
				echo !line! >> %filename%
			set "line=</config>"
			echo !line! >> %filename%

		chdir  ../
	chdir  ../
	
	IF NOT EXIST code MKDIR  code
	chdir  code 	
		
		IF NOT EXIST local MKDIR  local
		chdir  local

			IF NOT EXIST %ns% MKDIR  %ns%
			chdir  %ns%

				IF NOT EXIST %module% MKDIR  %module%
				chdir  %module%



					:: Block
					IF NOT EXIST Block MKDIR  Block
					chdir  Block
						:: Adminhtml
						IF NOT EXIST Adminhtml MKDIR  Adminhtml
						chdir  Adminhtml

						chdir  ../
					chdir  ../





					:: controllers
					IF NOT EXIST controllers MKDIR  controllers
					chdir  controllers
						:: Adminhtml
						IF NOT EXIST Adminhtml MKDIR  Adminhtml
						chdir  Adminhtml

						chdir  ../
					chdir  ../



					:: etc
					IF NOT EXIST etc MKDIR  etc
					chdir  etc

						set filename=config.xml

						set "line=<?xml version="1.0"?>"
						echo !line! > %filename%
						

							set "line=<config>"
							echo !line! >>  %filename%
	
								set "line=	<modules>"
								echo !line! >>  %filename%
		
									set "line=		<%ns%_%module%>"
									echo !line! >>  %filename%

			
										set "line=			<version>0.0.1</version>"
										echo !line! >>  %filename%

		
									set "line=		</%ns%_%module%>"
									echo !line! >> %filename%
									
	
								set "line=	</modules>"
								echo !line! >> %filename%

	
	
								set "line=	<global>"
								echo !line! >>  %filename%

		
									
									set "line=		<models>"
									echo !line! >>  %filename%
									
			
										set "line=			<%ns%_%module%><class>%ns%_%module%_Model</class></%ns%_%module%>"
										echo !line! >>  %filename%

		
									set "line=		</models>"
									echo !line! >>  %filename%


		
									
									set "line=		<helpers>"
									echo !line! >>  %filename%
									
			
										set "line=			<%ns%_%module%><class>%ns%_%module%_Helper</class></%ns%_%module%>"
										echo !line! >>  %filename%

		
									set "line=		</helpers>"
									echo !line! >>  %filename%



		
									
									set "line=		<blocks>"
									echo !line! >>  %filename%
									
			
										set "line= 			<%ns%_%module%_adminhtml><class>%ns%_%module%_Block_Adminhtml</class></%ns%_%module%_adminhtml>"
										echo !line! >>  %filename%

			
										set "line= 			<%ns%_%module%><class>%ns%_%module%_Block</class></%ns%_%module%>"
										echo !line! >>  %filename%

		
									set "line=		</blocks>"
									echo !line! >>  %filename%

		
									
									set "line=		<events>"
									echo !line! >>  %filename%
									
		
									set "line=		</events>"
									echo !line! >>  %filename%



		
									
									set "line=		<resources>"
									echo !line! >>  %filename%
										
			
										set "line=			<%ns%_%module%>"
										echo !line! >>  %filename%

				
											set "line= 				<setup><module>%ns%_%module%</module><class>Mage_Eav_Model_Entity_Setup</class></setup>"
											echo !line! >>  %filename%

				
											set "line= 				<connection><use>default_setup</use></connection>"
											echo !line! >>  %filename%

			
										set "line=			</%ns%_%module%>"
										echo !line! >>  %filename%

		
									set "line=		</resources>"
									echo !line! >>  %filename%



									
	
								set "line=	</global>"
								echo !line! >> %filename%

	
								set "line=	<frontend>"
								echo !line! >> %filename%
		
									set "line=		<routers>"
									echo !line! >> %filename%

		
									set "line=		</routers>"
									echo !line! >> %filename%

	
								set "line=	</frontend>"
								echo !line! >> %filename%


	
								set "line=	<admin>"
								echo !line! >> %filename%
		
									set "line=		<routers>"
									echo !line! >> %filename%

		
									set "line=		</routers>"
									echo !line! >> %filename%

	
								set "line=	</admin>"
								echo !line! >> %filename%


								

							set "line=</config>"
							echo !line! >> %filename%

					chdir  ../



					:: Helper
					IF NOT EXIST Helper MKDIR  Helper
					chdir  Helper
						set filename=Data.php
						
						set "line=<?php"
						echo !line! > %filename%
						
						set "line=class %ns%_%module%_Helper_Data extends Mage_Core_Helper_Abstract {"
						echo !line! >> %filename%

						set "line=}"
						echo !line! >> %filename%

					chdir  ../


					:: Model
					IF NOT EXIST Model MKDIR  Model
					chdir  Model

						:: Resource
						IF NOT EXIST Resource MKDIR  Resource
						chdir  Resource

						chdir  ../

					chdir  ../

					:: sql
					IF NOT EXIST sql MKDIR  sql
					chdir  sql
						IF NOT EXIST %ns%_%module% MKDIR  %ns%_%module%
						chdir  %ns%_%module%
							set filename=mysql4-install-0.0.1.php
							
							set "line=<?php "
							echo !line! > %filename%

							set "line=$installer = $this;"
							echo !line! >> %filename%

							set "line=$installer->startSetup();"
							echo !line! >> %filename%

							set "line=$installer->endSetup();"
							echo !line! >> %filename%

							set "line=?>"
							echo !line! >> %filename%

						chdir  ../
					chdir  ../

















				chdir  ../

			chdir  ../

		chdir  ../

	chdir  ../





				




echo[ 
echo all done.., files and flders created - rest is up to you sir 


pause