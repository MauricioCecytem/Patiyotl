-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.27


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema Patiyotl
--

CREATE DATABASE IF NOT EXISTS Patiyotl;
USE Patiyotl;

--
-- Definition of table `negocios`
--

DROP TABLE IF EXISTS `negocios`;
CREATE TABLE `negocios` (
  `clave_negocio` int(250) NOT NULL AUTO_INCREMENT,
  `Negocio` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Categoria` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Contrasena` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Imagen` longblob,
  `Estatus` char(1) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`clave_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `negocios`
--

/*!40000 ALTER TABLE `negocios` DISABLE KEYS */;
INSERT INTO `negocios` (`clave_negocio`,`Negocio`,`Categoria`,`Contrasena`,`Imagen`,`Estatus`) VALUES 
 (1,'Betito','Abarrotes','12345',NULL,'1'),
 (2,'Juanga','Farmacia','12345',NULL,'1'),
 (3,'Piña','Tlapaleria','12345',NULL,'0');
/*!40000 ALTER TABLE `negocios` ENABLE KEYS */;


--
-- Definition of table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `codigo` double NOT NULL AUTO_INCREMENT,
  `Negocio` int(250) NOT NULL,
  `Producto` varchar(200) NOT NULL,
  `Precio` double NOT NULL,
  `Imagen` longblob,
  PRIMARY KEY (`codigo`),
  KEY `Negocio` (`Negocio`),
  CONSTRAINT `x` FOREIGN KEY (`Negocio`) REFERENCES `negocios` (`clave_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`codigo`,`Negocio`,`Producto`,`Precio`,`Imagen`) VALUES 
 (1,1,'Galletas',13,NULL),
 (2,2,'Loperamida',150,NULL),
 (3,1,'Refresco 3L',25,NULL),
 (4,1,'Paleta',2,NULL),
 (5,1,'Papas',10,NULL),
 (6,1,'Lata de atun',12,NULL),
 (7,1,'Chicles',1,NULL),
 (8,1,'Paquete de Salchicas',15,NULL),
 (9,1,'Huevo 12pz',12,NULL),
 (10,2,'Jeringa Josef',5,NULL),
 (11,2,'Algodon 100gr',12,NULL),
 (12,2,'Dramamine',29,0xFFD8FFE000104A46494600010101006400640000FFDB0043000A07070807060A0808080B0A0A0B0E18100E0D0D0E1D15161118231F2524221F2221262B372F26293429212230413134393B3E3E3E252E4449433C48373D3E3BFFC0000B0801C201C201011100FFC4001B00010001050100000000000000000000000006010304050702FFC400571000010302020408090906020608070100010002030405061107122131164151545595D1D213175661718192939414151822325791A1D32342526282B133720824254353C1346383A2A3B2E1E22735737485C2F0F1FFDA0008010100003F00ECC888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888A888888888888888888888888888888888888888888888888AA8888888B5D7E8EAE6C3F718E85CE6D5BE9646C05AFD421E5A75727663239E5B73D8B87B70BE979ED0E6D55CDC0EE2DBB3483EB122AF0574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFA70574C1CE2E9D6ADEFAE9FA33A2C434387268B124B34B586ADC5A65A91390CD568035813C60ECCD4C51111117920381691983B083C6A0B88B46705417D7617AD96C371CF5BFD5A4732190FF335BF67D23F02A0F6AD21E28C1B8925B663413CD4F291E10B80D78C6597848DC3ED3766E1E7CB239E7B2BBE37C4B812E54D349571E21C3D5C3C25254480079671B75DA3ED0CC6F0731C9B72E9186314DB7165ABE71B6BDFE0DAF2C7B2400398E1B72233E420AD3B34AB8464BD8B536E24C864F0626F067C11767965ADE9E3DDE75998AB1C5B70BBA3A57472D75CEA3FC0A0A61AD23F909E41FDF881C9478BB4AB7F3E12216EC3B4EEDCC7FED6503CFB1DB7F0F42A1C0F8FA4C8BF485283C8DA7C87E44270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF270131E7DE1CFEE0F7938098F3EF0E7F707BC9C04C79F7873FB83DE4E0263CFBC39FDC1EF20C0B8F01CFC61CDB3969C9FF009AAFCD1A54B47D7A5BF5BAF11B4E7E0AA62D473BCD9E43FF0032D858F489E12EACB1E27B64B63BA48728C4A738673BBEA3FCE7D238B32567624D2261CC2B5CCA2B8D4C9F2973438C70C65E58D3B8BB93D1BFCCB6F1DFAD93D88DF22AB6496F1099BC38DDAA0127D632232DF9EC5CBEB34AB7CC577E86C782A95B4FE1CE42A6A181CF032DAECB6868033DF9EEF52C7C5FA44AEB5D3C78530EDC27B95C41F075572CB59EF909DAC8C0DC73396CDDB86DDAB7387B47B7CBE065C31DDDAAE76B9A352DAD9CB5807F3EA9CBD43D6789748A2A1A4B6D2C74B434D1534118C991C4D0D68F5059288888888B498A30A5AF16DB0D15CA1CC8CCC533720F89DCAD3FDC6E2B8DD559ABB0DC55181711B83ADB5CE325AAE073F0714E3EC9CCFD90ECF55C38B5B3DC733AFC1573ACB361DC67419BE29DB440961D863707F8371F3101FF0092CBA4D19434D83E8F1757D7B8402015135208FEB499BBF66C6BB8B5B368CF8B35D6307E1475B7C2DEEF1AB517FAFF00DA54CE467E0B3DD1B391A064366FCB9005E31EE9029303D2C1AD4AEABABA9CFC1421FAA001966E71C8E4368E2DAB0702694A8718D63ADD2D23A86B834BD8C326BB24037E4721B46FCB253D444444444444444444444444444444451DC678CADF82ED4DACAC63E692576A4103080E91DBCED3B80E32A2F82F4C14D8A2F8CB455DB0D0CD3E7E01ED9BC235C40CF54EC191C81C94CF11E1BB6E29B53EDF718439A76C7201F5E277139A788FF7E35CA5BA36A9C5F7EAA8EEB75315C2D8E653D73847AC6A19ABFB295A49DEE680083C6D278F25A0A7AFADB4E8AF11592791CD315D23A7CB3DC4E65ED1EEFF0032AD61E15B68B336DF6581F3624C40C01A63FB54B4BC473FDD2FDF9F13403B330BACE00D1B5060FA76D5546A555D9EDFAF3E59B62CFF007599EE1E7DE7CC3629C222222222222D75F2C76FC456B96DD73A7134128DDB8B4F139A7888E55C5AEB876AB08E28305D252FA1BBD3496F35E47D5787B7263DDC8E6B830BB3DF96633DB94E66799346787448CD4643536F8AA9AE1B1BA93318F07D0E6E4BA0281E9274752636F9254D1D6329AAE95A5994A0963DA4E7B48DA083E9DEA1968C1230869330BD043546A6B1F1CB3D5BDA326819380C8710C811B77FE4BB78DCAA888888888888888888888888888888B95E956D115E319614A3AE7BD94554F9207398722D712DCB2F39CC7E0ADE0ED0DD461FC530DD6BAE70CF0D238BE1644C21CF764402ECF7659E790CD75751AA31FF00C49BA98BEC7CD94BE172FE3F092E59FF004AE4974A692FD726D8EDD01A99AE574A8BACB101900C738B610E3FBA35759C49E278E3202EB98470752E188249DEE15373AADB55565B9177F2B47EEB0710F30F36525444444444444458575B550DEEDD35BEE34EDA8A699B93D8EFC883C446F046E5CFEA6DF3E1AB7D7E1CBFC92CB87ABDB9535D9A0B9D4B21CB2F0B96E208690EDC48CCE599CB716AD215053410D16269D96FAF0C1FB676DA7AB03FDEC520FAA5A77E598CB3CB895FBB693B0A5AE98BE3BA455F31D91C1467C2BE47710D9B07ACAC1C1163BAD65EEB319E2383E4F5D5AC1152D21DF4D0F103C84E43CFBF3DF909E222222222222222222222222222222228CE3BC2EEC5360F014D2882E14B20A8A39B3CB5646EE04F103D87896A2C3A4DA203E6CC599D96F107D599952D2D8E43FC4D76EC8EFDBEA242DA56E91B0C53811D35C5B72A97EC8A968019A491DC8037667E92146A0B8DCEA5971A3B5C51D5623BCCA1D5AE63F5A0B64406AB637C8366B35A0EC1B758B8F26730C2D8528B0C51BDB11F0F59390EA9AA78C9D2BBFE4D1B8346C03F15BE4444444444444445E5CD6BDA5AE6870232208CC151AABD1D615ACD70FB5889921CDF1D3CD2431BBFA1AE0DFC965D9B06E1DC3EE0FB5DA29E0906E97575E41FD4ECCFE6B76AA88888888888888888888888888888888B5F75B1DAAF70086E96FA7AB60DC258C38B7D0778F52D141A31C234A5DE02D8F8D8F39BA36D5CDAAEF48D6C8FA0EC524A2A0A4B6D2B69686961A5819F66385818D1EA0B25111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111162D75CA86D90F86AFADA7A58C9CB5E7943013E9255282E96FBAC466B75753D646D3917C12B5E01E4CC1DEB25CE2D6921A5C403F546599F328FD3E2C75546E921C3F77706B8B5E0C7102C237820C9983E9F4EE56787547D1F55EFE9BF595787547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF59387547D1F55EFE9BF595F662B32539A8658EE4F80027C2B4C05990DE7584B964B676AB80BADBE3AD6D2D4D3364CCB5952D0D7E59EFC813B0EF1E65913CF0D342F9E795914518D67BDEE0D6B47292772C3A0BFD9AE9218ADF75A2AB900CCB209DAF23D40AD82AA222222228E5EEF956EAA96D5653032A2268755D6D4FF8144D2331ADFC4F23686E6388920659C724C1D82AAE9EAEE9882EF25E65A7603535555565A230768C9AD20341E2033CF8B351ED14DADD87AA2EB8A2BA475B6C3246594E6ADDA8656EBE6D711C790190E52E39290CDA47BCDF657458270D4F708DA757E5D540C70E7E6CC8CFD641F32B11D2E9563AE6DD0C3623265949035C5A666F135C46C39711CF31CB9120C5AFF4566C5155E16F96C9F08DD5CF7426AB503E8E6941DCF200D5779F90E649192D6D83454FAEBFD5D86F17075BABA18C4D06A42248EA62CF22E63B319E472E2E3F31527FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF4FA3F41E523FE0C77D3E8FD07948FF831DF4FA3F41E523FE0C77D3E8FD07948FF00831DF5A3C59A24A6C316A6D4B6F535655CF2B60A5A58E90074D21DC07D63B32CCEE562DF836CF86AAE2F9F84B79BBC6DF0A6CD40D0E6C406DCE77EE006F23FB853470D23620A5A49E8AD167B55031BAF15154389D61FBA5C00E2DE064323B48D832BE317E3DC3DF5B12616656D237EDD4DB1DAC5A38C96E67F3D55E318D543A4CC0520C2B59F289A099934D499EAC8E001CDA5A78F3398E23ABB095ABC1D83B035C708455B5425A4B8D1FD5AD99D54F8A5A7973CB68CF26EDDDB3F3CD4AE82ED5B875A0565D1B7AB207061AFCC787A33B809C0FB4DFE7D84718CB689A0208CC1CC155444444566A657434D2CAC617B98C2E0C1BDC40CF2514C116DA7ABC394377ADA88EB65A867CA4E5FE1B247FD679233DAF04E45C768CB21AA064B55892F1849D883C2C54B2626BD10D105053BCCB1C65B9E45C07D46E45C769CC8CF896450E0AB9624AF8EF18EA464FE0CE74D6984FF00ABD3FF009BF8DDF88F391B04EA28A38636C5131B1C6C1935AD00068E4015C5A4BE5819706CB2C31C2F9266783A8A79C671553389AFCB711C4F1B479C6C5A7C2785EBA928AD6FBAB44551699EA1B4ADF0BE15C29DE086B1CE19679663D91B94CD11111111111111111111111111111111169EF1687D656D2DC61D5754D0433FC99AFF00B3E15ED01AE3E8C88F595A0C1F842AA8ED71477882389CE7786AA8DB27857D5CF9E65F2BF2198077306606F24A9B2288622C054F5F582F3629CD9AF91E6E6D542326CA79246EE703C67F1CF728ECD73B71B9C11E3EB4BACB77639A22BB52B9CD82A354823EBB7665980755D981E653CAAA1B75EE01574D3C45E58432AA0735E1CD3FBAEE27B4F1B4E63D7B560602A8966C2F1C7248D9994D3CD4F14CCCF5648D9239AC2DCC9D990006D3BB7A92A222222A28B57E8DB095CAADF5551686892576B48229A48DAF3CA5AD2067EA5BAB4D8AD562A7F93DAE820A48CEF113002EF49DE7D6B608888888888888888888888888888888888888888888ACD55253D6D3BE9EAE08E785E327C72B039AE1E70761517768B70619CCC2CCD6EB1CCB193C8D61FE90ECBD5B94A29E9E1A4A78E9E9A16430C4D0D6471B435AD0370006E0AF2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222A266395331CA998E54CC72A66395331CA998E54CC72A66395331CA998E5542E006648002B7F2A87F8FF229F2A87F8FF229F2A87F8FF22BD3268E4CF51E0E5BC2F798E54CC72AB1257D2C4F2C7CCD6B9BBC2B914F14ECD789E1CDDD98567E72A3E70D4F9CA8F9C355E8A78A66EB45235E3CC5259A38632F91E1AD1BC9567E72A3E70D4F9CA8F9C355E8E78A619C7235E3CC555F2323617BDC035A33279158F9CA8F9C353E72A3E70D5EA3AEA595E18C9DA5C770CF7ABF98E556E5A886000CB2B599EECCAB5F3951F386A7CE547CE1AAEC3530D40262903C0391C91D30D62D6E472DE49C82F4C903C1E223782BD66395331CA998E54CC72A66395331CA998E54CC72A66395331CA8AA888888B0AEF48FAFB2D751C6F6C6FA8A79226BDDB9A5CD2013E6DAB8B788BC4997FF003AA1F6A4EEAAF88AC49D3543ED49D8A9E22F1274DD0FB52762788BC49D3743EDC9D89E22F1274DD0FB72762788BC49D3743EDC9D89E22F1274D50FB52F62B52E85EF50FF008B88ED71FF009A678FF92B7E27AE9E54DA3E21DD8AFB3421882419C77FB73C7F2C921FF92F7E22F1274D50FB52F62BB47A19BF42E7C62F14323CEF21D21032DC0ECE5CBF0543A12C5449271052667FEB25EC543A12C5237E20A31FF6B2F627891C55D3F49EF25EC57A3D0D623861789EF1492B7CCE909038F8BFFEC9623741D88A46EB32F940E1CA1D2F7557C45E24E9AA1F6A4EC4AED0E5F69B51CEBBD1BB5806E40C9B3203CCBD52E86AFF00551C52B2EF46D11C87305D26DDA3CCAF788EBF667FDB747B4F249D89E23AFF00D3747F849D8B064D12DFA927731F73A425BF686B3F270FC165C1A10BFE4F70BD51EA48DFAB9990903304717997BF11D7FE9BA3FC24EC43A0EBFE5B2F7459FF00DA762C07689AFF004F3169B9D236469C8FD67E47F2DA15F1A18BEB227D5B2EF47E09D1921BAD266331BB72B34FA21BED4CC226DD691A4827325FD8B33C47E21E9AA1FF00C4EC58B55A1DBFD2BC364BA51B838661C1D2762F6CD0C620AF609D978A369FB2ECDD26D238F77264ACD4689EF6D9DEDF9D297261D51B5FB87A96637421888B41378A1692376721CBF255F11F887A6A87FF0013B11FA0FC44E8B505E6873D6CF3CE41C5E855F12F88A3391BAD11D8DDE642367F4AF2FD09622921D56DE28C66F2ECDCE933FECACBB41D88983375F281A394BE41FF002561DA1CBAB1C5AEC5169691BC1A8783FD9559A1BBBC8755989ED2E3C8D9DE7FE4AF8D066233B45EE80FA1F2762788BC49D3743ED49D89E22F1274DD0FB72762788BC49D3743EDC9D89E22F1274DD0FB72762AF88AC49D3543ED49D89E22B1274D50FB52762E95A3CC315984B0EC96DAEA986A65352E975A22480086803681B76295A222222B551032AA9A5A797331CAC2C70072391191DAA0772C5789B0533E4F74B14D79A28C6515CA91D939CD1BBC23723AAECB79D80F128AD7E9FAA0E6DB7D8238C8DCEA89CBBF2007F7515AFD30633AE77D4B8C748DFE1A781A07E2413F9AC7A4C53A40B8364A9A4BADDA58E219C9231CEF06C1FCC7EC8F5AF0CD2863660D56DFE73FE68E327F36A90DB6EDA5FBFC1951BEBDD13F2CA57431C20FA1EE03F22B33C54E3FBC12EBB5F5801DE27AC9253F80047E6AF47A00AC71CE5C430B4FF2D339DFDDC15E3FE8FC72D989467FFD97FEF565DA04B8C473A7C43013C59C0E66DF512AEC1A3AC7F6424D3E20F0AC3935AD8AB646E599DBB1C32568DDF4C187758CF6F7D640D3B1BF2764CDCBD31FD65B4B569ADEEF0905EEC92524B190D73E171D84FF0023B223772952AB662EB1DE8814B7189D2BBFDDC8751F9FA0EFF5290524E448232736BB767C4578B8D8A82EAE0EAC6CEFC864036A646347A9AE033F3EF5A1B8603A325ADB4DCEE56995E080FA7AB91C331B890E273FC428ADC6F9A45D1FBFC35D1B1620B4B4EDA96B355CD1FCC40CDA7CE411E759D53A5BC3370B5D3D517D4452EB90FA73112E61CB946C23CF9A92E10C5764BED318A82BE37CDACE7185DF55F972EA9DA47A149B3D99A874D7EB95E649A5B7D7436BB5C4E2D65518C4D35464722E6827558CCF3C8BB3272CF20146F10CF8A6CD14979A6BA0BAD34601969EA21635DA9CA1CC033E5DCA7F862F949886C34D70A32751CDD4734EF63DBB1C0FAFF11B564D55D69A8DCF6CDAE0463373B2D80659AE7D4D8C6FB8D6E3506C759F345A29DDA9F28F933649A53C8358E4366DDDB331BD65CCDC410C8FA8A5B80BCB9872929658D8D91D90DCD7B0001DE670F5852CA2AC82BF0BC7554CFD68E4876728236107CE0820FA16B0DE2DD6495B5572AC8E9A201C359E779CB701BC9F305891E96B09BE491A6AA760602439D03B27F9865B7F1C9452E3A40C418C2B051E16B68A78A3275AA67C9C580EECCFD969F36D2A4362C05515948D9F10620B9D6BCB8E70C152E862FC1B913BBCCB2061CB650D6C8EA58A68CB6424655329E3F3BB6A968B951E5FE38FC0AC2B8E2CB0DA59AF5F74A7A7196603DDF58FA06F2A117CD3859E84F83B4D0D45C242336BDC7C130F2659E6E3F805A238D74A788C9F99ECAEA389DF65F1D2E432FF003C9B0FA9797609D2C5E48757DF1F4C1DBDAFAF2D03FA63042788BBD549D6ADC450179FB4431F27E6485799FE8FCFD5FAF891A0FF002D17FEF5E25FF47F9C67E0B11C6EE40EA423FB38AB0ED0C62EB69325A6FD4FAC3F86692171FC011F9AB551069930EC0E6B67AEA985A3EDC6E6551CBCD982EFC946A7D26E3B8247C33DEAA2291A72735D046D737D5AB984E15E906AA8CDC63BA5DA4A569C9D3424EA34F23B5760F5AA51E9531A5138117A92668FDD9E363C1F5919FE6A516DD3DDDA16B5B71B452D565BDD0BDD113F8EB052AB6694EEF897286C183EA2595DB3C34D3650C7E773837779B304A9CD92DF536FA0D5AEAAF95564CF32D44A064D2F3C4D1C4D00003CC071AD922222222A2E6589B42B437DBE4F74A5BAC9446AA4324B118448358EF2D398CB33B72DAB2E83461833085BE5B9DCE3F977C99864926ACC9CD681BF260D9E80732A0666C43A5FBD9A0A0FF6758A908FD9819470B788B80D8E79DB90E2F30CCAE8F6DC2B827477471D5551A764F9E42AEB0874AF77F20E23E668CD6C0E91B0AB256B27B8494DAE726BEA69268987FA9CD0148E09E1AA8193D3CAC9A2906B31F1B839AE1CA08DEAEA22B155FE1B7FCEDFEEAF2D75E2D54974A5D4AAA386A434E7AB2C61DFDD41AE3A35C3B5D9BA08E5A27F2C2FD99FA1D9FE592C6A4C278DAC84C987EFACAC8621F560ABCC0CF880CF31F810B361D22E22B2E4CC5B83EB206B7ED55508F091FA48CC803FA9486D38E30E6209207505D212FCC831CA7C1BC1CB764ECB3F5291B9AD7B4B5C039AE19107715CAB1E68A6866FF5CC3ED651CD23CB9F4C7644E397EEFF0009FCBD0B9355D0DD6C570A564B1CF41571C8E731FB5A5A411F59A46FCB942EAD86B492CC4B4EDB75D6714F5A5BA8C71FAAC9B6640FF98F27E1C8BD4367A9BF60C930BEB474F76B7318C9689CFD5748D611911FCAE0064EDD99DAB3AA1D5F5587F83964C2B75A5A996114A6A2BDAD6C34CC2355CE0FD63AD90CF2CBD3E65954B5F63D166198AC91D61B8DC9CE3E0E963CBC2CF2B8EC1AA33D46E790DBF995EA3BE51545CAAB0E62F9E3A1B9BD800735DA9054C6E6EF6176E3BDA413BC6CE41AFB5D96B700C9516F16DB8DDAD73BFC353D550B1B248C710016BE3CC1E21B41FF00D31ED318C2D72BBE20AC8E4B54154F6BA2A799F9C8F76D24EAE676B89D8DDBC6B3F8574584704FFB49CD172AF33D5C76F61FAEDF08F73C03FC2067B49F3E59AE3772B8DD3155E0CB307D4544A728E16024347F0B429A61AD0FDCAA036B2FD0BA9E01B7E4CC70F08EF4FF0008F36FF42E976BB7D0D1321A2A78D94D4CDD81B18C80FF00FDE55B7B9E21B161D840B8DCA968C346C63E41AC4799BBCFE0B9FD7E9045655CD1E1FB356DD1C642048232C8F7F2EFFC72557619D22DFF003F94DC696CB03BFDDC5B5F97A5A49FCC2BD45A14B7472786B95C67AF949CDC5D9B1AEFC0E7F9A9B5970B59AC70C6DA3B6D2C52B065E15910D73FD476FE6B7192AA222A28ED6E3DC33435868A4BA366A96EF869627CEE0472860397AD624F2609C7A5D6FA814D5750D6E6229A374350C1CAD0E01E07A362E6D88F06DF745D5C310E19AD965B7B5C0481DB4B013F66403639A79766DE439152FB45A706E952C22E72DAA2A6AE0752A4D39F07247271ED1B1C0EF0483B3CE0AD50D0050FCB43CDFAA0D2E7B63F00DD7CB935B3CBD7ABEA5D5A8E921A1A2828E9DBA90C11B638DBBF26B46407E015F44444444445CBB4EF7496970C515BA37168ADA8264CBF79AC19E5F8969F5291E8C2D105A700DB044C01F5510A995C37B9CFDBB7D0321EA57709534372A618AAB9AD96BABB59D1C8FDBF2787588646CFE100644E5BC924F165B5A7B8D8F1253D4535355D15CE11F5278D9236568F3386D5CF6D124BA3DD27B70CC523CD8EF0DF0B4B13C922079CF2009FE60479C16E7B9755554562AFFC367FF51BFDD5F56A5A98A276AB9DB7906D58EF968A476B3A3CCF2EAAB8DACA7680D19B47F976059008201073078C2D25DF0BD8AED2C6DAEB552CDE135839DE0C35C767F10C8FE6B591E006DB76E1FC4176B565F62113F8781BFF0067203FDD5AB8C38BE8A389B3555B2E8D04E4E744FA579D9C796BB7F20A8DA99AB2C92D3DDF0A4D3C475CE6C7433B1A72DF917077AC0508A9C1585EAA763E386ED6B39ED229647B079F2C8FF75875784E77C31D3C18CE7AB653FF008066B5D41961F331F917347981017B8F0C624AB6881F882F95B11D85B2CC69A2F5B9EF2ECBFA0A9CE12D1C5AB0C4CDBB577819AB983EA39A096439F182EDAE77F31CBCC02D962CC3960C5D48C656C91B6A21CCC1386E659E623F79A78C7E041DAB9C4D82AF76890C76FBBDC6961E292DB52648FDDB9CC7B7D00BFD2560FCC373F963AAE7BF573250035B51516DA87CC00E30E20EA9F41F5ADB52E8F70F88CD6DC6BAF772A930924328266349CB6EB38B493BF9429261C8E92D154D164C29541FA87EB16B232EF4BDEED65207CF8CEB07FABD0DA6D8D272D6A89DF50F03FCAC0D1FF78AD057E15B8CF5524773C475B2309D611D1B5B4CCC8F16CCDC47AD6F2CB81F0B5346DAB8ACB4D24EFF00ACE96A0199DADC6737E797A97AA86B59532B5AD00079C801B06D5251B955111111738D2A5FAE0D96D784ED13182AAF3206492B7616465C1B967C599273F3348E352AB55A6C581EC2D8A2305152C2D1E16A25706179FE2738EF27FF0040BDD650D9F16DA592473455119FAD4D594CF05F0BC6E7B1E37107B0ECCC2B760A87623C210FCE91B2574F1BE0A9007D590B5CE8DE72E204B49F5AE49A259E4B1E932E1610F2E864F0D011CAE89C4B5DF8077E2BBCA222222222222E6BA6FB2CD71C250D7C0C2F36E9F5E4006E8DC3227D4757F35BBD175CA3B9E8FAD658E05F4D1FC9E41FC2587203F0C8FAD2B6CF5B4363BA58E18E592DD591CA29A5A600C94BE133CD85A48D6682E241073C8E446CCCC4B44FA3EBDE1FBE545DEE8DF9345E09D0C516B7D697323EB10370D9B8EDF32CAC5F4EEBE69970DD0D202E7DBD8DA9A87B7FDDB43F5B227D43DA1CABA8AAA2F12C4258CB0923908E22AD6556065AF11F3E45631B7CE492656927693B53E6E9BFE233F34F9BA6FF0088CFCD5E860AA81A5AD7C646FC883B15C64521944B33C12D1935AD1B02BEB0EBE8DF58D8C35E1BAA49DA334A7A37434525397825DAD91039561FCCB281FE333D929F32CBFF001D9EC9436597FE333D92B61554EE9E90C2D7069396D23916BFE6697FE333D929F32CBFF199EC957A9ECED63C3E67EBE5B4340C87AD66D44466A79220402E6E599585476C7D354B65748D70008C805B25855F406ADCC7B1E1AE68C8E633CC2F7434B25244E8DEF6B81398C86592C49AD12C933E4133007389CB54ADA712AA222222E5BA4181D6DD27615C41383F222F6D33DE7ECC6ED63913C9B1F9FF00495BCD29613B862DC351D3DB1E0D4534C2610B9DAA2519119667667B7667B37AD668F6C97FC3B84A5B5C74D2C55F5333A474B52D021A5CDA06C1992F232CF20322766606D537A2A5A3C39618E9DAF2CA5A1833748F3B720337389E53B49F4AE3DA1FA09AF58F2E7891D1B9B045E11C1C46C324AE272F64BB3F572AEE6888888888888ADC91B2689D14AC6BE3782D735C33041DE08E350BA2C0D5B852EB357612AC89B4B52419ED7585DE089E563C665872D83307FB652282E7712CFF005AB154C6E1BFC14D148D3E83AC0FE2024F5578A86BA3A1B7B695C46426AC7B486F9C3184977A096FA55BB061AA5B1BAA2A7C23EAAE158ED7AAAD9B2F0933BD5B1AD1C4D1B005BA44444444444444444444444444444444458377B3D0DF6DB35BAE54ED9E9A619398EE23C441E223942D7D053DEEC903691EEF9E2963C9B14A5E19501A370767935E40FDECDA4F18E3598FB955B584C764AD7BBF875E16FE65EA3F7CB0E22C610FC86BAA21B35A9E47868A9DE65A89C67F64BB20D68F30D6F5A91596C96FC3F6B8ADD6CA76C14F1EE036971E3713C64F2AD82222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222B734D153C124F33DB1C51B4BDEF71C8340DA493C992D1F0F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6A70F30979476DF896F6ADA5B6EB4178A63536EAC86AE10E2C3242F0E6E6378CC71ED0B31111111615DE8DD71B356D0B1E18FA9A79226B9DB81734804FE2B8B7883BC74CD0FB0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F627883BC74CD17B0FEC4F10778E99A2F61FD89E20EF1D3345EC3FB13C41DE3A668BD87F62E99A3DC295383B0EBED9555115448EA874BAF10206443465B7D0A54888888AD4F10A882485C5C1B230B49638B5C01196C23683E70B43C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF5CBB4994D77C3F8968292DB78B95BEDD551347CAA7B84EE8FC26B10ED671248006AEE1C79A95DD6CD1DA70536EF4971ABBB545342D7D4385EEA1B1CF90FAEE616BF2CF3DA07A9738769027AD2DA6B6DAAE1F2990EAC63E79AC9493C81A1E332B5B74BA630A1B9B2866BC5C22AC93206921AD91EE8DC7734FD63F5B6EECC919EDC9744B4E8CB1B5551B26B9E37AEA195E33F031CD24A5BE6275C0CFD19FA558B9619C6384627D754D655E24B7C60BA5F0571A98266378CE4D7E590FEAFC16F3084D84F19407E4372BD45571B7396965BB5407B4728FAF93879C7AF25ACC6335870FE23A4B5555FAFD410F8213CD2435F3CAF7EB38B5AD1ACE21A06A924E44EE038D5BC6966B86109292F14970BFDD2D01C3E58C7DC9F935A76021CD21C38B23B467BFCF8F4AD7630C622DF86ABEFB1D9695A0D4D7477294971201CB37B881C800049C89DDBB22E5258ACD8D692C9C24C43572BA6653D4D3CD5D36A83265AAE6BDA410E198241CC104EE214AEF967C35872DAFB85D6EF778216EC19DDAA4B9EEFE168D7DA541E83E7AC732C8309C171B75BE3716BAE15F76A9792790343F2CFCC33CB8C85B7934578B453671E906BDD3E5B1AE74A1B9FA75C9FC9736BB54633B0DF8D9EE97EB8534ED2327BEB64F06E69DCE073FB27978BD456C64C557BC3B3FC93105BABE4948D66385DAAA30F1FC4D2D90B5C0F28D8A6D801D1E358AAAB2765750D240751BAB7CAA73DEFD84EF78C801C796DCFCC545E78EF51E9320B250624ABBB51CB54098A9AE133BC143ADB5AF703B0B5BBC827F1D8BAEF01EDBCF6F3D6F51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D380F6DE7B79EB6A8EFA701EDBCF6F3D6D51DF4E03DB79EDE7ADAA3BE9C07B6F3DBCF5B5477D6D6D96C86D34A69A9E4A99185C5D9D4543E6767B3F79E49CB66E59C8888888888888888888888AC5552535740EA7ABA78AA2177DA8E560734FA8EC5A5E01E146BDCF661FB7B1EE19070A669D5F3804100FA952C182AC985299E2CF42C6D496106A253AF238E5C6E3B8798643CCB8DC763AAC07A4FB3D66269992C3512F877D500750BDC087124FF000BC824F26478D757C7F8E0E0BB453564343F2C754CBE0DB9BF558D196799201F50E3DBC8BD5A748565ADC254D882E53476C8A7718CC733F58EB83910DCB6BB9760DCB895C6DF73B1DCEAB18D8637D3DAE2B939B43500641ED25C46A83BD99020F11CF2E55DC1B64C3B8F6DB69BF5CED71CF2BA9D9247ACE70D5CF6969C88D600E7B0E637F2ADA624AEA2B6582AAA2E14EE9A85ACD4A86B5BAD946EFAA491C6003B72E2CD43F42F5D432E0F6D151D3B9B2D3B9CEAA972C9AE91CE76433E32181B9F10CC052A9F07E1FA8C42CC4135B637DCA320B66D676F03204B73C890371233D83902E238C25BEE91718DD596E85F5305A1AF10C0CFE06B834968E3738EDCB79032E20BAAE03C4586D98628AD5415D09A8A2A26BE7A719890383737EC206675B3CF2E35AFC13A56E17E2596D5F34BA9A231BA48A512EB90065F6865B33CF88EFD8A2FA608D98971BD9EC5696B67B8B586397576EAEB104071E2C80738F202BA0D930747C0CA7C3D8962A7B9B698B98C7907EC071D420EF690DC86C398DD9AF545A37C274540DA3367A7A9631CE2D7D446D7C80139EAEB6409033D9992B796EB2DAED0C2CB6DBA9A8DAEFB42089ACCFD390DAB39111111111111111111111111111111111111111116B6F960B5E23B79A1BB5232A61275803982C772B48DA0FA14599A29B73697E40FBEDF25B683FF00417D503165C996AEEF464B9C697ACEDB7622B359E8216D35B9948194D1B73D56B9D23B5CEDDE49D524EF3B1740C47822A0601A1C196285D231D2B7C2D54CE01B100ED673CEDCF32E3B0341E3DCB6371C5587F4714768B1D6BE7D5F022363A38F5B558D0017BB6F19E4CCEFD8B371D57D2C1A3FBC54BDED7432D13DAC20E61C5EDD56E5E92E0A23A089D8CC3971A07B752A61ACF08F61191D5731A1A72FE92A56FC7F626E316616124AFAE71D52E6B338DAFCB3D5273DF9720CB94AD5E1DC25578671E5E2A6383C35AAF2DF08D95846703F32E2C70CF3C8EB3B2233E2CF25CC66C3CFC2FA68A1B65AA473982B217C5AC732237E45CD3CA034B879C2EA9268C2D50D44D359AE574B20A83FB58EDF5018C77A88247A01C87105B2C3381AC7851D24D4103E4AA976495550ED795C0ED3B78BD4067C6A468888888888888888888888888888888888888888888888A2B8FB05438CECCD844820AEA6717D2CE7734F1B4E5C4721BB7640F1647434BA4CA9C3B1B2DF8DECF59455518D5F96451F84867CBF7811C679067EADCA2F8DB18E1FD20CD496CA6D5A6A7824D792BE784BA6C8EF6431B737389D9BF21B06796F52A86C370C6B2504370A19AD7862DDA9E028AA0E53D6168C9A641FBAD006E3B7F1CC6CB10E19B8D0DFDB8AF0B36335FA823ACA17BB5195918CB2DBFBAF190C89E41EB80BEFB69C2F8FE6C4F35BE51F2BCCD4D0D64263AAA391DF69F1EB7D5783B76839E478B8E5F2698ACB54D10D8EDF71BB56BFEC53C5016EDF39DB90F38055CC1B83AE2710D4E32C5023176AACFC0D330E6DA56E59659F2EAECE3C867B493B27E8888888888888888888888888888888888888888888888888BC49147330B24635EC3BDAE0083EA56A1A1A4A6717414D0C4E3BCB230D3F9057D555A9A9E1A866A4F0B256EFC9ED0E1F9AA414B4F4C08A7823881DE23606E7F82BC88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888A8AA88888A99A2222222222222222222222222222222222AA2222A2AA2222222B15952DA2A29EA9E096C11BA4206F200CFF00E4B8A628B862EA9B059B15DBEE7737CB7191EE74544F3E0299A0FECE30C68FAC77825D9E6464BB0D866B854586866BAC422AE7C0C754300CB55E46DD9C5E8E25A9C6D5B88ED54105D30F53B6B4D33CFCA68CB4932C646F196DCC11C5CA77A8753E9EAD8D1AB70B1D6C130D8E6C6F6BC03EBD52AF1D3C58DEE0CA7B45CE4792006E4C19FE0E2B2E5D23E219297E571611F9BE901DB5575AC14EC1EA2013E819AD437186917108CAC54D4C633BAA29E91CD880F3493100FA435598EC58F6EFB6B71CC839596C0F972DBB898C3599F9B59658D18DD2666B55DFF1154B88DBAD3C71E7F8C8E5E8689DC37565F47FF928FBAABE2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB89E2A1DCF6FDD651F713C543B9EDFBACA3EE278A8773DBF75947DC4F150EE7B7EEB28FB8A9E2A1DCF6FBD651F7153C5655C7FF47BBE21A7CB682DAC8DFF00FECD58D2E11C676D25F478E2E516A9C80AF8E40C1C99B9A646E5E7392AC57AD2959E213D4BA1BAD21FB353053B2A59972FECCB5D97A8AD9DB3491892B22F0B4F61A0BCB583F6ADB6D616CACF4C4F1AE3F0F5AF12E9BEDF452986E587AEB49301B637B5A08F53885E25D3DD840FD8DA6E2F7723FC1B47FE62B6983315625C677815CFB68B5D8E063B20ECDCEA979D806B10330369D806DCB6953E5C6698E34C41A53AAA0AFACBB5BA96274BA8EA5798E285833F06EC88D578272DFBF32BA2E07BF4F88B0E32AAA8C6EA98A5929E67C7B19239872D61E62323EB5224444445E248D92C6E8E468731E0870233041DEB94DC29F10E8929AA2AED73D35C30E3A5D614B52F2D9202E3B9A78FD59F19CB795AB7FF00A405596111E1E85AEE22EAA711F86A85811691B48B8CAA4D1D8A9D9113B1DF23807D507F89EF2437D398521B3E8666AEA8F9CB19DDE6ADA97ED7451C84FA9D21DA7D032F4ACC8AF16BA1B8BB0F68DAC347535EC194D5DABFB1A71BB3749B5CFCBD3E8CF72BD70B45061D969ABAFE66C57896B1DA9474F265A85FBC8647F658C1BCB88D9BF62915161BADB8EA55629AB156F3916DBA0CDB490F98B77C8472BB31C80292471B228C471B1AC6B4641AD1901EA5ED11111111111111111111111111111115168EE58620A995D596DA996D3703B7E534BB03CFFD647F6641E919F210A2B35151DF2F8DB362AA06DB3108697D15D6DEE317CA40FDE63B7870E363B3CB7856AE575B8E17D4A0C77410DF6C6F76A477414E1CE6720959B76F9C7E6558B9E8870D620A38EE985EB8D09946BC4F89E6585DEACF36EDE43B39146ABAF1A51D1E9D5AE99F5B44DD8D9A56F8788F266FFB4DF41215FA7D3F5C991815562A595FFC514CE60FC083FDD6C2DD8D7166934545AAC91D159A10C1F29A874A5F2B58ECC7D5D83CE360F585D2F0D61FA4C3162A6B4D16B3A3801CDEEDEF7139971F49FC16D91111111605E2CF417EB64B6DB95389E9A6CB59A491B41CC1046D0472A88D1E86707524E257D354D500730C9E725A3D9CB3F5A9A5150525B699B4B434D15340CFB31C2C0D68F505CC31B624B9E2EC4E3026199BC1B332DAFAA69D800FB4DCF89A371E53B3D3D030D61AB7615B4476EB6C5AAC6ED7C87EDCAEE3738F19FEDB943312E2CB7E0FC6770BA5D69E5A9A9304105BE26640888873A47027601AC323C7B0053DB3DD29EF768A5B9D2EB781AA8848C0F19100F111CAB391111111111111111111111111111111115172ABF63FB3E25AC9ACF474D3C773B7D646FB74EE03F6B33256B486E5B4660B864778CF3C974FAAA582B69A4A5AA8593432B4B5F1BDB9B5C0EF042E4357F2ED0E6288E4A77CB5185EE327D68492E30BB8F2FE60368FE20323B466BAF43353D752473C2E64D4F3B0398E1B5AF691983E82144EEFA28C217895D33ADA692571DAEA4798C1FE9DADFC96CF0B60BB2E108258ED50383E6CBC2CD2BB59EFCB70278879800A408888888888B5988AE2EB461BB95C58337D2D2C92B479C3491F9AE7BA0AB630596E37B97EBD4D554988BDC733AAD009DBE7738E7E80A558D71ED160E8E089D4F256DC2ABFC0A488E45DB72CC9C8E433D836124EE1BD42EAF1CD25CEA6969B4838224A2A67BBF6155346E2199FA403972E47D4BACD2C74F152C51D2B23653B58044D8C00D0DCB60196CCB257911111111111111111111111111111111151731C4588F0F61DC5F24587B0AB2ED88DD9BA5753C67F6648DA49009D6DBB72037ED2B3F0C693CDCAF8CB0DFECD3D96E32FF84D973D590F26D008278B783CBB96EF4836886F581EE94F2B4174703A7889FDD7B01703F965EB2B43A14B9CB70C0A2095C49A1A97C2DCCE7F5720E1FF00988F52E86888888888888B5D882DC6EF87EE36D69C9D554D244D3C85CD207E792E67A0EBB8A68EE5862B3386AE09CCCC8DFB09D81AF6FA4168FC564636AB6E11D23C58B2E341256529B718690B3732A013F549FDDCC13B7CE761C8A914777B4E3CC0224B9C0CA365C6094B619A405C0C79E6F61D99EAE59E792D868F8CE700D94D4125FF00246659EFD5CBEAFF00DDC948D1111111111111111111111111111111115140B473050D0515C2B2A1EC377AFB85578705C3C2BCC6F39B00DE721B72FE6511ACC54CD275E2CB4941679A96E343726CA642ED711D38C8B9CE764354E606CE50369254F749B7F86C381EBCB9E04F591BA9A0671B9CF1913EA6927D4B5FA19B3CD6AC0AC96A1858FAF9DD50D077EA101AD3EB0DCFD6A7E8888888888888A078C74726ED736621C3F59F365F2121C251B19291BB5B2DC72D99EDCC6C20AB10E2AC590539B7E23C09515B265AAE968B5648A5E425A7303F1F505832614C498DEFD4D597BA56D86CD471BA286862903A57B1C3270CDBB1BAC361DD90D8071AE9B144C86264313032363435AD68C800360015C444444444444444444444444444444444545CF715E08BBC78820C5185268C5643319A4A298E4C95C5A1AE2D3C45CD0011B33CB3CC15E862EBF51B5ECA5D1C57475D31CE4D473044E772991A36FAFF00158745802F58AEF71DF71ECD196C5FE05AE039C718DF938ED197280493B333C4BA5B5AD63435AD0D6B46400190017A4444444444444454C915511111111111111111111111111111111111153255444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444445FFFD9),
 (13,2,'Coca-cola',12,NULL),
 (14,2,'Ketorolaco',30,NULL),
 (15,2,'Celestamine NS',200,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contra` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_p` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_m` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` set('Masculino','Femenino') COLLATE utf8_unicode_ci NOT NULL,
  `Telefono_cel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Telefono_fijo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo_electronico` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  UNIQUE KEY `Usuario_UNIQUE` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`idUsuarios`,`Usuario`,`contra`,`nombre`,`apellido_p`,`apellido_m`,`fecha_nac`,`sexo`,`Telefono_cel`,`Telefono_fijo`,`correo_electronico`) VALUES 
 (3,'ElPiÃ±as','$2y$10$ZivWT8wlzSgtnP8Q7KKh3.FdLA/RmH9okWDLheNoJEKzqqOcbmVS6','Esteban AndrÃ©s','PiÃ±a','CabaÃ±as','2000-10-04','Masculino','5577848846','32323232','esteban0400@gmail.com'),
 (4,'yo','$2y$10$kkxyBOVgAX/F7c2Nn.Q1rOjJtaOIOz1pW0xA6tWYu3Hf6bAGoeHmC','Ãngel','Rivera','Pera','2017-03-30','Masculino','5524525465','55276175276','bolorp342@gmail.com'),
 (5,'Arth18','$2y$10$zQZXO2fwcYdgpZltjgDp8eo0zcLE1jiJppdleBBqYSGx7w5kJTp66','Mario Arturo','Underwood','Navarro','1999-03-03','Masculino','5520243322','58922992','underwoodmarioarturo@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
