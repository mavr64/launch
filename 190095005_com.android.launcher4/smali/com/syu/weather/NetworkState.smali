.class public Lcom/syu/weather/NetworkState;
.super Landroid/content/BroadcastReceiver;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x3a98

.field private static final URL_:Ljava/lang/String; = "http://www.json.org"

.field static instance:Lcom/syu/weather/NetworkState;


# instance fields
.field checkNetwork:Ljava/lang/Runnable;

.field isNetworkAvailable:Z

.field lisenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field space:I

.field workThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/syu/weather/NetworkState;->space:I

    .line 54
    new-instance v1, Lcom/syu/weather/NetworkState$1;

    invoke-direct {v1, p0}, Lcom/syu/weather/NetworkState$1;-><init>(Lcom/syu/weather/NetworkState;)V

    iput-object v1, p0, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ping network"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    .line 85
    iget-object v1, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/syu/weather/NetworkState;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/syu/weather/NetworkState;->instance:Lcom/syu/weather/NetworkState;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/syu/weather/NetworkState;

    invoke-direct {v0, p0}, Lcom/syu/weather/NetworkState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/weather/NetworkState;->instance:Lcom/syu/weather/NetworkState;

    .line 75
    :cond_0
    sget-object v0, Lcom/syu/weather/NetworkState;->instance:Lcom/syu/weather/NetworkState;

    return-object v0
.end method


# virtual methods
.method public checkNetUrl()V
    .locals 15

    .prologue
    const/16 v14, 0xc8

    const/4 v13, 0x0

    .line 242
    const/4 v8, 0x0

    .line 244
    .local v8, "responseCode":I
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 245
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v11, "http://www.json.org"

    invoke-direct {v2, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v11, "Accept-Language"

    const-string v12, "zh-CN,zh;q=0.8,en;q=0.6,zh-TW;q=0.4"

    invoke-virtual {v2, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 251
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .line 253
    .local v6, "reqHeaders":[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v6

    if-lt v4, v11, :cond_2

    .line 259
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 261
    if-eq v8, v14, :cond_0

    .line 262
    const/16 v11, 0xce

    if-eq v8, v11, :cond_0

    .line 263
    const/16 v11, 0x194

    if-ne v8, v11, :cond_3

    .line 264
    :cond_0
    if-ne v8, v14, :cond_1

    .line 265
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 266
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    const-string v11, "utf-8"

    invoke-static {v1, v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "str":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "str === "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 269
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "i":I
    .end local v6    # "reqHeaders":[Lorg/apache/http/Header;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isNetworkAvailable =============== "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 278
    return-void

    .line 254
    .restart local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "i":I
    .restart local v6    # "reqHeaders":[Lorg/apache/http/Header;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    aget-object v11, v6, v4

    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "name":Ljava/lang/String;
    aget-object v11, v6, v4

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, "value":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Http request: Name\u2014>"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",Value\u2014>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 274
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "i":I
    .end local v6    # "reqHeaders":[Lorg/apache/http/Header;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v13, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    goto :goto_1
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNetworkAvailable == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    return v0
.end method

.method isNetworkConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "ret":Z
    iget-object v6, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    .line 295
    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 299
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 301
    .local v3, "wifiNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 302
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v2, v5

    .line 303
    :goto_0
    return v2

    :cond_2
    move v2, v4

    .line 301
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 103
    .line 104
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 108
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 110
    .local v3, "wifiNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 111
    .local v2, "mobVaild":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    .local v4, "wifiVaild":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_3

    .line 113
    :cond_0
    iget-object v5, p0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v5, p0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :goto_2
    return-void

    .end local v2    # "mobVaild":Z
    .end local v4    # "wifiVaild":Z
    :cond_1
    move v2, v5

    .line 110
    goto :goto_0

    .restart local v2    # "mobVaild":Z
    :cond_2
    move v4, v5

    .line 111
    goto :goto_1

    .line 116
    .restart local v4    # "wifiVaild":Z
    :cond_3
    iput-boolean v5, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    .line 117
    iget-object v5, p0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public final ping()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, "vaild":Z
    const-string v8, "www.baidu.com"

    invoke-virtual {p0, v8}, Lcom/syu/weather/NetworkState;->ping(Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "baidu":Z
    if-nez v5, :cond_2

    if-nez v0, :cond_2

    move v5, v6

    .line 130
    :goto_0
    if-nez v5, :cond_0

    .line 131
    const-string v8, "www.json.org"

    invoke-virtual {p0, v8}, Lcom/syu/weather/NetworkState;->ping(Ljava/lang/String;)Z

    move-result v2

    .line 132
    .local v2, "json":Z
    if-nez v5, :cond_3

    if-nez v2, :cond_3

    move v5, v6

    .line 133
    :goto_1
    if-nez v5, :cond_0

    .line 134
    const-string v8, "sina.cn"

    invoke-virtual {p0, v8}, Lcom/syu/weather/NetworkState;->ping(Ljava/lang/String;)Z

    move-result v4

    .line 135
    .local v4, "sina":Z
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    move v5, v6

    .line 136
    :goto_2
    if-nez v5, :cond_0

    .line 137
    const-string v8, "www.google.com"

    invoke-virtual {p0, v8}, Lcom/syu/weather/NetworkState;->ping(Ljava/lang/String;)Z

    move-result v1

    .line 138
    .local v1, "google":Z
    if-nez v5, :cond_5

    if-nez v1, :cond_5

    move v5, v6

    .line 143
    .end local v1    # "google":Z
    .end local v2    # "json":Z
    .end local v4    # "sina":Z
    :cond_0
    :goto_3
    iget-boolean v6, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    if-eq v5, v6, :cond_1

    .line 144
    iput-boolean v5, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    .line 145
    iget-object v6, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 192
    :cond_1
    iget-boolean v6, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    return v6

    :cond_2
    move v5, v7

    .line 129
    goto :goto_0

    .restart local v2    # "json":Z
    :cond_3
    move v5, v7

    .line 132
    goto :goto_1

    .restart local v4    # "sina":Z
    :cond_4
    move v5, v7

    .line 135
    goto :goto_2

    .restart local v1    # "google":Z
    :cond_5
    move v5, v7

    .line 138
    goto :goto_3

    .line 146
    .end local v1    # "google":Z
    .end local v2    # "json":Z
    .end local v4    # "sina":Z
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;

    .line 147
    .local v3, "lisenter":Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;
    invoke-interface {v3, v5}, Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;->onChanged(Z)V

    goto :goto_4
.end method

.method ping(Ljava/lang/String;)Z
    .locals 13
    .param p1, "www"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v9, 0x0

    .line 197
    .local v9, "success":Z
    const/4 v4, 0x0

    .line 198
    .local v4, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 199
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 201
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ping -c 2 -W 10 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 203
    .local v5, "p":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 204
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v8, "stringBuffer":Ljava/lang/StringBuffer;
    const-string v0, ""

    .line 207
    .local v0, "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "result content : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 213
    .local v7, "status":I
    if-nez v7, :cond_5

    const/4 v9, 0x1

    .line 214
    :goto_1
    if-nez v7, :cond_6

    .line 215
    const-string v6, "success"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    :goto_2
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 232
    :cond_0
    :goto_3
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 236
    :cond_1
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ping "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " success = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    move-object v2, v3

    .line 238
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "status":I
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_5
    return v9

    .line 208
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 219
    .end local v0    # "content":Ljava/lang/String;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 220
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "p":Ljava/lang/Process;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    const-string v6, "IOException"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 232
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 236
    :cond_4
    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ping "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " success = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_5

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "status":I
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 217
    :cond_6
    :try_start_8
    const-string v6, "failed"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 228
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "status":I
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 233
    :catch_2
    move-exception v1

    .line 234
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 222
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 224
    const-string v6, "InterruptedException"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 232
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_7
    :goto_a
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 236
    :cond_8
    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ping "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " success = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 228
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 225
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 227
    :goto_c
    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 232
    :cond_9
    :goto_d
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 236
    :cond_a
    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ping "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " success = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 237
    throw v10

    .line 228
    :catch_6
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 228
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "status":I
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_8
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 225
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "status":I
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_c

    .line 222
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 219
    .end local v5    # "p":Ljava/lang/Process;
    :catch_b
    move-exception v1

    goto/16 :goto_6
.end method

.method public registerLisenter(Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;)V
    .locals 1
    .param p1, "lisenter"    # Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    .line 326
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-boolean v0, p0, Lcom/syu/weather/NetworkState;->isNetworkAvailable:Z

    invoke-interface {p1, v0}, Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;->onChanged(Z)V

    .line 330
    :cond_1
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/syu/weather/NetworkState;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/syu/weather/NetworkState;->space:I

    .line 99
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 319
    :cond_0
    return-void
.end method

.method public unRegisterLisenter(Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;)V
    .locals 1
    .param p1, "lisenter"    # Lcom/syu/weather/NetworkState$OnNetworkStateChangeLisenter;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->lisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/syu/weather/NetworkState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    return-void
.end method
