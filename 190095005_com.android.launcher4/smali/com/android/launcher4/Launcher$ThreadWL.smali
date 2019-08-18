.class public Lcom/android/launcher4/Launcher$ThreadWL;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadWL"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1303
    monitor-enter p0

    .line 1304
    :try_start_0
    const-string v10, ""

    .line 1305
    .local v10, "str_status":Ljava/lang/String;
    const-string v9, ""

    .line 1306
    .local v9, "str_recv":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x1

    .line 1308
    .local v0, "activation":Z
    const/4 v2, 0x0

    .line 1310
    .local v2, "flag":I
    :try_start_1
    sget v11, Lcom/android/launcher4/Launcher;->activekey:I

    const/16 v12, 0xaf

    if-eq v11, v12, :cond_0

    sget v11, Lcom/android/launcher4/Launcher;->activekey:I

    const/16 v12, 0xae

    if-eq v11, v12, :cond_0

    .line 1311
    const/4 v0, 0x0

    .line 1312
    const/4 v2, 0x1

    .line 1314
    :cond_0
    sget v11, Lcom/android/launcher4/Launcher;->activekey:I

    if-nez v11, :cond_1

    .line 1315
    const/4 v0, 0x1

    .line 1317
    :cond_1
    if-eqz v0, :cond_c

    .line 1318
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_device"

    sget-object v13, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_key"

    .line 1320
    sget v13, Lcom/android/launcher4/Launcher;->activekey:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_launcher"

    .line 1322
    sget v13, Lcom/android/launcher4/Launcher;->areaindex:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_state"

    .line 1324
    sget v13, Lcom/android/launcher4/Launcher;->isactive:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    const-string v11, "http://certify.carsql.com:8902/Activate/findGainActivationCode.action"

    .line 1325
    invoke-static {v6, v11}, Lcom/syu/util/JsonUtil;->doPostStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1327
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1328
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c3

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    .line 1329
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v11}, Lcom/android/launcher4/Launcher;->access$64(Lcom/android/launcher4/Launcher;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v12, v12, Lcom/android/launcher4/Launcher;->runnable_showfinal:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1420
    :goto_0
    return-void

    .line 1334
    :cond_2
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "status"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1337
    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1338
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c4

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1364
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    :try_start_4
    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1365
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1366
    .local v3, "inparam":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1367
    .local v5, "outparam":Landroid/os/Bundle;
    const-string v11, "areaindex"

    sget v12, Lcom/android/launcher4/Launcher;->areaindex:I

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    const-string v11, "activekey"

    sget v12, Lcom/android/launcher4/Launcher;->activekey:I

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1369
    const-string v11, "serialno"

    iget-object v12, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v13, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getbyte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1370
    const-string v11, "activecode"

    iget-object v12, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v13, Lcom/android/launcher4/Launcher;->activecode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getbyte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1371
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v11

    .line 1372
    const/16 v12, 0x71

    .line 1371
    invoke-virtual {v11, v12, v3, v5}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 1374
    .local v8, "recv":I
    if-eqz v3, :cond_4

    if-nez v8, :cond_4

    .line 1375
    const-string v11, "isactived"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lcom/android/launcher4/Launcher;->isactive:I

    .line 1377
    :cond_4
    const-string v11, "wl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " 113 BSP recv  isactive = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v13, Lcom/android/launcher4/Launcher;->isactive:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1378
    const-string v13, " recv = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1377
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    sget v11, Lcom/android/launcher4/Launcher;->isactive:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 1381
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v14, 0x7f0c00ca

    invoke-virtual {v12, v14}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    .line 1396
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1398
    .local v7, "params1":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_5
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_device"

    .line 1399
    sget-object v13, Lcom/android/launcher4/Launcher;->str_device:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_key"

    .line 1401
    sget v13, Lcom/android/launcher4/Launcher;->activekey:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_launcher"

    .line 1403
    sget v13, Lcom/android/launcher4/Launcher;->areaindex:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "act_state"

    .line 1405
    sget v13, Lcom/android/launcher4/Launcher;->isactive:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    const-string v11, "http://certify.carsql.com:8902/Activate/updateRecordState.action"

    .line 1406
    invoke-static {v7, v11}, Lcom/syu/util/JsonUtil;->doPostStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1418
    .end local v3    # "inparam":Landroid/os/Bundle;
    .end local v5    # "outparam":Landroid/os/Bundle;
    .end local v7    # "params1":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "recv":I
    :cond_5
    :goto_3
    :try_start_6
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v11}, Lcom/android/launcher4/Launcher;->access$64(Lcom/android/launcher4/Launcher;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v12, v12, Lcom/android/launcher4/Launcher;->runnable_showfinal:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1303
    monitor-exit p0

    goto/16 :goto_0

    .end local v0    # "activation":Z
    .end local v2    # "flag":I
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v9    # "str_recv":Ljava/lang/String;
    .end local v10    # "str_status":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 1339
    .restart local v0    # "activation":Z
    .restart local v2    # "flag":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v9    # "str_recv":Ljava/lang/String;
    .restart local v10    # "str_status":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v11, "-2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1340
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c5

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1360
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1361
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1341
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_7
    :try_start_9
    const-string v11, "-3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1342
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c6

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    goto/16 :goto_1

    .line 1343
    :cond_8
    const-string v11, "-4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1344
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c7

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    goto/16 :goto_1

    .line 1345
    :cond_9
    const-string v11, "-5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1346
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c8

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    goto/16 :goto_1

    .line 1347
    :cond_a
    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1348
    if-eqz v4, :cond_b

    .line 1349
    const-string v11, "activecode"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/launcher4/Launcher;->activecode:Ljava/lang/String;

    .line 1351
    :cond_b
    const-string v11, "key"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1350
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/launcher4/Launcher;->activekey:I

    .line 1353
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    new-instance v12, Ljava/lang/String;

    const-string v13, "content"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1354
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 1353
    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    goto/16 :goto_1

    .line 1357
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_c
    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    .line 1358
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00c9

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 1388
    .restart local v3    # "inparam":Landroid/os/Bundle;
    .restart local v5    # "outparam":Landroid/os/Bundle;
    .restart local v8    # "recv":I
    :cond_d
    :try_start_a
    iget-object v11, p0, Lcom/android/launcher4/Launcher$ThreadWL;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v12, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    const v13, 0x7f0c00cb

    invoke-virtual {v12, v13}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    goto/16 :goto_2

    .line 1408
    .restart local v7    # "params1":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v1

    .line 1409
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3
.end method
