.class public Lcom/syu/weather/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getDoubleName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    const-string v2, ""

    invoke-static {p0, p1, v0, v1, v2}, Lcom/syu/weather/JSONUtils;->getDoubleName(Lorg/json/JSONObject;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDoubleName(Lorg/json/JSONObject;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base"    # D
    .param p4, "def"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    .end local p4    # "def":Ljava/lang/String;
    :goto_0
    return-object p4

    .line 128
    .restart local p4    # "def":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 129
    .local v4, "val":D
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 130
    .local v1, "format":Ljava/text/DecimalFormat;
    add-double v6, v4, p2

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    move-object p4, v2

    .line 131
    goto :goto_0

    .line 132
    .end local v1    # "format":Ljava/text/DecimalFormat;
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "val":D
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFromArray(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 154
    const-string v3, ""

    .line 155
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v3

    .line 166
    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 158
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 160
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "len":I
    if-gt v2, p2, :cond_2

    .end local v2    # "len":I
    :cond_1
    move-object v4, v3

    .line 161
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "len":I
    :goto_1
    move-object v4, v3

    .line 166
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 104
    .restart local p2    # "def":I
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "val":I
    move p2, v1

    .line 105
    goto :goto_0

    .line 106
    .end local v1    # "val":I
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 32
    .local v1, "result":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return-object v1

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 21
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getObjFromArray(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "ret":Lorg/json/JSONObject;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v2

    .line 150
    .end local v2    # "ret":Lorg/json/JSONObject;
    .local v3, "ret":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 143
    .end local v3    # "ret":Lorg/json/JSONObject;
    .restart local v2    # "ret":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 144
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gt v4, p2, :cond_2

    :cond_1
    move-object v3, v2

    .line 145
    .end local v2    # "ret":Lorg/json/JSONObject;
    .restart local v3    # "ret":Lorg/json/JSONObject;
    goto :goto_0

    .line 146
    .end local v3    # "ret":Lorg/json/JSONObject;
    .restart local v2    # "ret":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_1
    move-object v3, v2

    .line 150
    .end local v2    # "ret":Lorg/json/JSONObject;
    .restart local v3    # "ret":Lorg/json/JSONObject;
    goto :goto_0

    .line 147
    .end local v3    # "ret":Lorg/json/JSONObject;
    .restart local v2    # "ret":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const-string v1, ""

    .line 96
    :goto_0
    return-object v1

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 96
    const-string v1, ""

    goto :goto_0
.end method

.method public static getTempName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-wide v0, -0x3f8eed999999999aL    # -273.15

    const-string v2, ""

    invoke-static {p0, p1, v0, v1, v2}, Lcom/syu/weather/JSONUtils;->getDoubleName(Lorg/json/JSONObject;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonToIntArray(Lorg/json/JSONObject;Ljava/lang/String;)[I
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    .line 64
    :cond_0
    :goto_0
    return-object v4

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    if-nez v3, :cond_3

    .end local v3    # "len":I
    :cond_2
    move-object v4, v5

    .line 54
    goto :goto_0

    .line 56
    .restart local v3    # "len":I
    :cond_3
    new-array v4, v3, [I

    .line 57
    .local v4, "values":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 58
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "values":[I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 64
    goto :goto_0
.end method

.method public static jsonToStrArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    .line 83
    :cond_0
    :goto_0
    return-object v4

    .line 71
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    if-nez v3, :cond_3

    .end local v3    # "len":I
    :cond_2
    move-object v4, v5

    .line 74
    goto :goto_0

    .line 75
    .restart local v3    # "len":I
    :cond_3
    new-array v4, v3, [Ljava/lang/String;

    .line 76
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 83
    goto :goto_0
.end method
