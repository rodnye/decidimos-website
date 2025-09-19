# Roles de Usuario 🎯

## 👥 Ciudadano
- 📝 Puede postular iniciativas individualmente o en grupo (comunidades de ciudadanos) y darles seguimiento, recibiendo notificaciones importantes 🔔
- 👀 Puede visualizar las iniciativas en un panel específico para ciudadanos
- 🏷️ Debe asociar cada iniciativa con un "área de interés"
- ✅ Puede votar por iniciativas dentro de un área de interés (solo un voto por área)
- *📋 Nota: Aunque el documento menciona "mostrar resultados en tiempo real", se implementará de manera diferente (el ciudadano no podrá ver los resultados para evitar sesgos en las decisiones de voto)*
- 💬 Puede mencionar iniciativas y abrir debates
- *⚙️ Nota: La funcionalidad de asignar la iniciativa a un responsable de administración se omitirá, ya que el "área de interés" implica automáticamente al responsable correspondiente*
- 🔍 **Puede seguir consultas populares y recibir actualizaciones**
- 🗳️ **Puede participar en consultas populares con votación única por consulta**

## 👨‍💼 Administradores
- 🛡️ Moderan las actividades de los ciudadanos
- 📋 Deben mantener explícitas las razones de validación e invalidación de propuestas
- 💰 Asignan el presupuesto a partir de un listado de iniciativas ganadoras
- ⚙️ **Configuran convocatorias de consultas populares con al menos 15 días de antelación** 📅
- 📊 **Publican resultados e informes finales de consultas en la plataforma**
- ⭐ **Dan valoración oficial a los resultados de las consultas**

## 🤖 Sistema
- 📈 Genera automáticamente el listado de iniciativas ganadoras
- ➕ **Permite la creación y gestión de consultas populares**
- 🔗 **Asocia consultas populares con proyectos, presupuestos, iniciativas e incidencias**
- 👁️ **Visualiza listado de consultas populares y sus estados (abierta, pausada, finalizada)**
- 🗑️ **Elimina automáticamente consultas populares sin participación**
- ⚡ **Procesa automáticamente las consultas al finalizar el período establecido**
- 📨 **Envía resultados automáticamente al Administrador municipal de presupuesto participativo**
- 📋 **Genera informes de seguimiento de consultas**

## 📊 Funcionalidades de Consultas Populares
- ➕ Creación y configuración de consultas populares
- 🔗 Asociación con elementos del sistema (proyectos, presupuestos, iniciativas, incidencias)
- 🎚️ Gestión de estados: abierta 🟢, pausada 🟡, finalizada 🔴
- 🗑️ Eliminación automática de consultas sin participación
- ℹ️ Consulta de información detallada de cada consulta popular
- 👥 Habilitación de participación ciudadana en consultas
- ✅ Sistema de votación única por ciudadano por consulta
- 🔔 Funcionalidad de seguimiento de consultas para usuarios
- 📄 Generación de informes de seguimiento
- ⚙️ Configuración de convocatorias con mínimo 15 días de antelación 📅
- ⚡ Procesamiento automático de resultados
- 📊 Publicación de resultados e informes finales
- ⭐ Sistema de valoración de consultas

## 📋 Estados de las Iniciativas
- ⏳ Pendiente
- ✔️ Validada
- 🎯 Aceptada (incluida en el listado)
- ❌ Rechazada
- 📅 Postergada

## 👥 Roles Adicionales
- 🏛️ Comisión de validación [por área de interés]
- 💰 Comisión de presupuesto participativo [por área de interés]
- 🚀 Comisión de ejecución
- 🏢 Administrador municipal de presupuesto participativo
- 💻 Administrador de plataforma