.class public Lcom/syu/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPostStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str_http"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v3, ""

    .line 83
    .local v3, "str":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v2, 0x0

    .line 88
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 89
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 92
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 97
    :cond_0
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRequestStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "urlServer"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v7, ""

    .line 35
    .local v7, "str":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 39
    .local v1, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 40
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 41
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 42
    const-string v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v9, "Charset"

    const-string v10, "UTF-8"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 53
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 55
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 56
    .local v4, "responseCode":I
    const/16 v9, 0xc8

    if-ne v9, v4, :cond_0

    .line 59
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 64
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v5, "responseReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "readLine":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 68
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .end local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "readLine":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "responseReader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return-object v7

    .line 66
    .restart local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "readLine":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v5    # "responseReader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 71
    .end local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "readLine":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "responseReader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
