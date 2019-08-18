.class public Lcom/syu/crash/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static mInstance:Lcom/syu/crash/CrashHandler;


# instance fields
.field final CARSH_DIR_PATH:Ljava/lang/String;

.field final dateFormat:Ljava/text/DateFormat;

.field infos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "/sdcard/crash"

    iput-object v0, p0, Lcom/syu/crash/CrashHandler;->CARSH_DIR_PATH:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-hh-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/syu/crash/CrashHandler;->dateFormat:Ljava/text/DateFormat;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/crash/CrashHandler;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/syu/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/crash/CrashHandler;->pkgName:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 63
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/syu/crash/CrashHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/syu/crash/CrashHandler;->mInstance:Lcom/syu/crash/CrashHandler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/syu/crash/CrashHandler;

    invoke-direct {v0, p0}, Lcom/syu/crash/CrashHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/crash/CrashHandler;->mInstance:Lcom/syu/crash/CrashHandler;

    .line 53
    :cond_0
    sget-object v0, Lcom/syu/crash/CrashHandler;->mInstance:Lcom/syu/crash/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/syu/crash/CrashHandler;->collectInfo()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/syu/crash/CrashHandler;->saveCarshException(Ljava/lang/Throwable;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method collectInfo()V
    .locals 6

    .prologue
    .line 86
    iget-object v4, p0, Lcom/syu/crash/CrashHandler;->infos:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/syu/crash/CrashHandler;->infos:Ljava/util/HashMap;

    .line 91
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/syu/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 92
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/syu/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 93
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 94
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v3, "null"

    .line 95
    .local v3, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "versionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/syu/crash/CrashHandler;->infos:Ljava/util/HashMap;

    const-string v5, "versionName"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/syu/crash/CrashHandler;->infos:Ljava/util/HashMap;

    const-string v5, "versionCode"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "versionCode":Ljava/lang/String;
    .end local v3    # "versionName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 94
    .restart local v0    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method saveCarshException(Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v9, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/crash/CrashHandler;->infos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 111
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v12, "writer":Ljava/io/Writer;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v7, "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 115
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    if-nez v1, :cond_2

    .line 119
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 120
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/crash/CrashHandler;->dateFormat:Ljava/text/DateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "time":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "crash-"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/crash/CrashHandler;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v13, "/sdcard/crash"

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "/sdcard/crash/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 131
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "time":Ljava/lang/String;
    :goto_2
    return-void

    .line 105
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .end local v8    # "result":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 106
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 108
    .local v11, "value":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 116
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    .restart local v12    # "writer":Ljava/io/Writer;
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto/16 :goto_1

    .line 132
    .restart local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/syu/crash/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/syu/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/syu/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
