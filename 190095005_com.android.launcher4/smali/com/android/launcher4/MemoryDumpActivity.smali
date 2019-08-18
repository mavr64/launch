.class public Lcom/android/launcher4/MemoryDumpActivity;
.super Landroid/app/Activity;
.source "MemoryDumpActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryDumpActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static dumpHprofAndShare(Landroid/content/Context;Lcom/android/launcher4/MemoryTracker;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lcom/android/launcher4/MemoryTracker;

    .prologue
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v3, "body":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v10, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 89
    .local v6, "myPid":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v13

    .line 90
    .local v13, "pids_orig":[I
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 91
    .local v12, "pids_copy":[I
    array-length v0, v12

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 114
    invoke-static {v10}, Lcom/android/launcher4/MemoryDumpActivity;->zipUp(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, "zipfile":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 138
    :goto_1
    return-void

    .line 91
    .end local v16    # "zipfile":Ljava/lang/String;
    :cond_0
    aget v11, v12, v17

    .line 92
    .local v11, "pid":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/launcher4/MemoryTracker;->getMemInfo(I)Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;

    move-result-object v5

    .line 93
    .local v5, "info":Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    if-eqz v5, :cond_1

    .line 94
    const-string v19, "pid "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 95
    const-string v20, " up="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 96
    const-string v20, " pss="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v5, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentPss:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 97
    const-string v20, " uss="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v5, Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;->currentUss:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 98
    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    if-ne v11, v6, :cond_2

    .line 101
    const-string v19, "%s/launcher-memory-%d.ahprof"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 103
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 101
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "path":Ljava/lang/String;
    const-string v19, "MemoryDumpActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Dumping memory info for process "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-static {v7}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_2
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v7    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 107
    .restart local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Ljava/io/IOException;
    const-string v19, "MemoryDumpActivity"

    const-string v20, "error dumping memory:"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 118
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "info":Lcom/android/launcher4/MemoryTracker$ProcessMemInfo;
    .end local v7    # "path":Ljava/lang/String;
    .end local v11    # "pid":I
    .restart local v16    # "zipfile":Ljava/lang/String;
    :cond_3
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v15, "shareIntent":Landroid/content/Intent;
    const-string v17, "application/zip"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 122
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const-string v17, "android.intent.extra.SUBJECT"

    const-string v18, "Launcher memory dump (%d)"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .local v2, "appVersion":Ljava/lang/String;
    :goto_3
    const-string v17, "\nApp version: "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nBuild: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v17, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v8, "pathFile":Ljava/io/File;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 136
    .local v9, "pathUri":Landroid/net/Uri;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 126
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v8    # "pathFile":Ljava/io/File;
    .end local v9    # "pathUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 127
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "?"

    .restart local v2    # "appVersion":Ljava/lang/String;
    goto :goto_3
.end method

.method public static startDump(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher4/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public static startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "andThen"    # Ljava/lang/Runnable;

    .prologue
    .line 157
    new-instance v0, Lcom/android/launcher4/MemoryDumpActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/MemoryDumpActivity$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 169
    .local v0, "connection":Landroid/content/ServiceConnection;
    const-string v1, "MemoryDumpActivity"

    const-string v2, "attempting to bind to memory tracker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher4/MemoryTracker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const/4 v2, 0x1

    .line 170
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 172
    return-void
.end method

.method public static zipUp(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v0, 0x40000

    .line 45
    .local v0, "BUFSIZ":I
    const/high16 v12, 0x40000

    new-array v1, v12, [B

    .line 46
    .local v1, "buf":[B
    const-string v12, "%s/hprof-%d.zip"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    .line 46
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "zipfilePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 51
    .local v10, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .local v8, "os":Ljava/io/OutputStream;
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v11, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-nez v13, :cond_1

    .line 72
    if-eqz v11, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v10, v11

    .line 80
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "zipfilePath":Ljava/lang/String;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_2
    return-object v9

    .line 53
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "zipfilePath":Ljava/lang/String;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "is":Ljava/io/InputStream;
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 57
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_5
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 60
    :goto_3
    const/4 v13, 0x0

    const/high16 v14, 0x40000

    invoke-virtual {v6, v1, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    if-gtz v7, :cond_3

    .line 63
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 68
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 69
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_4
    :try_start_7
    const-string v12, "MemoryDumpActivity"

    const-string v13, "error zipping up profile data"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 72
    if-eqz v10, :cond_2

    .line 74
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 70
    :cond_2
    :goto_5
    const/4 v9, 0x0

    goto :goto_2

    .line 61
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_3
    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v11, v1, v13, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 64
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "len":I
    :catchall_0
    move-exception v12

    move-object v5, v6

    .line 65
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 66
    throw v12
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 71
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .line 72
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_7
    if-eqz v10, :cond_4

    .line 74
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 79
    :cond_4
    :goto_8
    throw v12

    .line 75
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v12

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    goto :goto_8

    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v12

    goto :goto_1

    .line 71
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v12

    goto :goto_7

    .line 68
    :catch_4
    move-exception v2

    goto :goto_4

    .line 64
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v12

    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 144
    new-instance v0, Lcom/android/launcher4/MemoryDumpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/MemoryDumpActivity$1;-><init>(Lcom/android/launcher4/MemoryDumpActivity;)V

    invoke-static {p0, v0}, Lcom/android/launcher4/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
