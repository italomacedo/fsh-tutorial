Alias: $patient-genderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity

Profile: Paciente
Parent: Patient
Id: Paciente
Description: "Um perfil do paciente do International Patient Summary"
* ^version = "1.0.0"
* extension contains $patient-genderIdentity named genderIdentity 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores nacionais do paciente"
* identifier contains
    cns 0..1 and
    cpf 1..1
* identifier[cns] ^short = "CNS do paciente"
* identifier[cns] ^definition = "Cadastro Nacional de Saúde (CNS) do paciente"
* identifier[cns].system 1..
* identifier[cns].system = "https://rnds-fhir.saude.gov.br/NamingSystem/cns" (exactly)
* identifier[cns].value 1..
* identifier[cpf] ^short = "CPF do paciente"
* identifier[cpf] ^definition = "Cadastro de Pessoa Física (CPF) do paciente"
* identifier[cpf].system 1..
* identifier[cpf].system = "https://rnds-fhir.saude.gov.br/NamingSystem/cns" (exactly)
* identifier[cpf].value 1..
* name.family 1..
* name.family ^short = "Sobrenome"
* name.family ^definition = "Sobrenome do paciente"
* gender from AdministrativeGender (required)