.class public Lcom/android/launcher4/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String; = "com.android.launcher4.action.LAUNCH"

.field private static final DEBUG_BROADCASTS:Z = false

.field public static final EXTRA_CELLX:Ljava/lang/String; = "cellX"

.field public static final EXTRA_CELLY:Ljava/lang/String; = "cellY"

.field public static final EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "intent"

.field public static final EXTRA_SCREEN:Ljava/lang/String; = "screen"

.field private static final FLUSH_IMMEDIATELY:Z = true

.field private static final INITIAL_STATS_SIZE:I = 0x64

.field private static final LOCAL_LAUNCH_LOG:Z = true

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "launches.log"

.field private static final LOG_TAG_LAUNCH:I = 0x1000

.field private static final LOG_TAG_VERSION:I = 0x1

.field private static final LOG_VERSION:I = 0x1

.field public static final PERM_LAUNCH:Ljava/lang/String; = "com.android.launcher4.permission.RECEIVE_LAUNCH_BROADCASTS"

.field private static final STATS_FILE_NAME:Ljava/lang/String; = "stats.log"

.field private static final STATS_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher3/Stats"


# instance fields
.field mHistogram:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher4/Launcher;

.field mLog:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 64
    invoke-direct {p0}, Lcom/android/launcher4/Stats;->loadStats()V

    .line 68
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v3, "launches.log"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/Launcher;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    .line 69
    iget-object v1, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    iget-object v1, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Launcher3/Stats"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to create stats log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object v5, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Launcher3/Stats"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to write to stats log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v5, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    goto :goto_0
.end method

.method private loadStats()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    .line 185
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/launcher4/Stats;->mIntents:Ljava/util/ArrayList;

    .line 186
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    .line 187
    const/4 v4, 0x0

    .line 189
    .local v4, "stats":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v8, "stats.log"

    invoke-virtual {v7, v8}, Lcom/android/launcher4/Launcher;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .local v5, "stats":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 191
    .local v6, "version":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 192
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 193
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 206
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_4

    .line 208
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v4, v5

    .line 212
    .end local v5    # "stats":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 194
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 196
    .local v1, "count":I
    iget-object v7, p0, Lcom/android/launcher4/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v7, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "stats":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    :catch_0
    move-exception v7

    .line 206
    :goto_2
    if-eqz v4, :cond_1

    .line 208
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v7

    goto :goto_1

    .line 202
    :catch_2
    move-exception v7

    .line 206
    :goto_3
    if-eqz v4, :cond_1

    .line 208
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 209
    :catch_3
    move-exception v7

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v7

    .line 206
    :goto_4
    if-eqz v4, :cond_3

    .line 208
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 211
    :cond_3
    :goto_5
    throw v7

    .line 209
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v6    # "version":I
    :catch_5
    move-exception v8

    goto :goto_5

    .line 205
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    goto :goto_4

    .line 202
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    :catch_6
    move-exception v7

    move-object v4, v5

    .end local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    goto :goto_3

    .line 200
    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    :catch_7
    move-exception v7

    move-object v4, v5

    .end local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v4    # "stats":Ljava/io/DataInputStream;
    .restart local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :cond_4
    move-object v4, v5

    .end local v5    # "stats":Ljava/io/DataInputStream;
    .restart local v4    # "stats":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private saveStats()V
    .locals 8

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, "stats":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v6, "stats.log.tmp"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher4/Launcher;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v3    # "stats":Ljava/io/DataOutputStream;
    .local v4, "stats":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    iget-object v5, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "N":I
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    const/4 v3, 0x0

    .line 169
    .end local v4    # "stats":Ljava/io/DataOutputStream;
    .restart local v3    # "stats":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v6, "stats.log.tmp"

    invoke-virtual {v5, v6}, Lcom/android/launcher4/Launcher;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 170
    iget-object v6, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v7, "stats.log"

    invoke-virtual {v6, v7}, Lcom/android/launcher4/Launcher;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v3, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 182
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 164
    .end local v3    # "stats":Ljava/io/DataOutputStream;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v4    # "stats":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/android/launcher4/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "stats":Ljava/io/DataOutputStream;
    .restart local v3    # "stats":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v5, "Launcher3/Stats"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to create stats data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    if-eqz v3, :cond_0

    .line 178
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 179
    :catch_1
    move-exception v5

    goto :goto_1

    .line 173
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 174
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "Launcher3/Stats"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to write to stats data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    if-eqz v3, :cond_0

    .line 178
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 179
    :catch_3
    move-exception v5

    goto :goto_1

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 176
    :goto_4
    if-eqz v3, :cond_2

    .line 178
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 181
    :cond_2
    :goto_5
    throw v5

    .line 179
    :catch_4
    move-exception v6

    goto :goto_5

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :catch_5
    move-exception v5

    goto :goto_1

    .line 175
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "stats":Ljava/io/DataOutputStream;
    .restart local v4    # "stats":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stats":Ljava/io/DataOutputStream;
    .restart local v3    # "stats":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 173
    .end local v3    # "stats":Ljava/io/DataOutputStream;
    .restart local v4    # "stats":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "stats":Ljava/io/DataOutputStream;
    .restart local v3    # "stats":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 171
    .end local v3    # "stats":Ljava/io/DataOutputStream;
    .restart local v4    # "stats":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "stats":Ljava/io/DataOutputStream;
    .restart local v3    # "stats":Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public incrementLaunch(Ljava/lang/String;)V
    .locals 3
    .param p1, "intentStr"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/launcher4/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/launcher4/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher4/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public recordLaunch(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/Stats;->recordLaunch(Landroid/content/Intent;Lcom/android/launcher4/ShortcutInfo;)V

    .line 108
    return-void
.end method

.method public recordLaunch(Landroid/content/Intent;Lcom/android/launcher4/ShortcutInfo;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "shortcut"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    const/4 v5, 0x0

    .line 111
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 112
    .end local p1    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "flat":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher4.action.LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "intent"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 118
    const-string v4, "container"

    iget-wide v6, p2, Lcom/android/launcher4/ShortcutInfo;->container:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 119
    const-string v5, "screen"

    iget-wide v6, p2, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 120
    const-string v5, "cellX"

    iget v6, p2, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 121
    const-string v5, "cellY"

    iget v6, p2, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLauncher:Lcom/android/launcher4/Launcher;

    const-string v5, "com.android.launcher4.permission.RECEIVE_LAUNCH_BROADCASTS"

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher4/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Stats;->incrementLaunch(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/launcher4/Stats;->saveStats()V

    .line 131
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_1

    .line 133
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 134
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 135
    if-nez p2, :cond_2

    .line 136
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 139
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 146
    :goto_0
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 141
    :cond_2
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    iget-wide v6, p2, Lcom/android/launcher4/ShortcutInfo;->container:J

    long-to-int v5, v6

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    iget-wide v6, p2, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    long-to-int v5, v6

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    iget v5, p2, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    iget-object v4, p0, Lcom/android/launcher4/Stats;->mLog:Ljava/io/DataOutputStream;

    iget v5, p2, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
