import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Política de Privacidade"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Política de Privacidade do Aplicativo Marcador de Vôlei",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("1. Introdução"),
            _buildSectionContent(
                "O aplicativo \"Marcador de Vôlei\" foi desenvolvido para auxiliar na marcação de pontos de partidas de vôlei. Nosso compromisso é com a privacidade dos usuários, garantindo que nenhum dado pessoal seja coletado, armazenado ou compartilhado."),
            _buildSectionTitle("2. Coleta e Uso de Informações"),
            _buildSectionContent(
                "Este aplicativo não coleta, armazena ou compartilha nenhuma informação pessoal dos usuários. Todos os dados referentes às partidas são armazenados apenas temporariamente na memória do dispositivo e são apagados assim que o aplicativo é encerrado."),
            _buildSectionTitle("3. Permissões"),
            _buildSectionContent(
                "O aplicativo não solicita nenhuma permissão especial além das necessárias para sua funcionalidade básica."),
            _buildSectionTitle("4. Segurança"),
            _buildSectionContent(
                "Como não armazenamos nenhuma informação do usuário, não há risco de vazamento de dados ou acesso indevido a informações pessoais."),
            _buildSectionTitle("5. Alterações nesta Política"),
            _buildSectionContent(
                "Podemos atualizar esta Política de Privacidade periodicamente. Caso haja mudanças significativas, a nova versão será disponibilizada nesta página."),
            _buildSectionTitle("6. Contato"),
            _buildSectionContent(
                "Se você tiver qualquer dúvida sobre esta Política de Privacidade, entre em contato:\nEmail: breno.nog.araujo@gmail.com"),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, color: Colors.black54, height: 1.5),
      ),
    );
  }
}
