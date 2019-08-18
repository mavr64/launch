.class public Lcom/syu/util/Lrc;
.super Ljava/lang/Object;
.source "Lrc.java"


# static fields
.field public static final APE_FOOTER_SIZE:I = 0x20

.field public static final ID3V22_FRAME_HEADER_SIZE:I = 0x6

.field public static final ID3V23_FRAME_HEADER_SIZE:I = 0xa

.field public static final ID3V2_HEADER_SIZE:I = 0xa

.field public static final ID3_SIZE:I = 0x80

.field public static final MODE_ANSI:I = 0x0

.field public static final MODE_BIGENDIAN:I = 0x2

.field public static final MODE_UNICODE:I = 0x1

.field public static final MODE_UTF8:I = 0x3

.field public static strLrcSavePath:Ljava/lang/String;


# instance fields
.field public mLrcTimeSave1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLrcTimeSave2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/util/Lrc;->mLrcTimeSave1:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/util/Lrc;->mLrcTimeSave2:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public GetAPEv2Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z
    .locals 5
    .param p1, "strFile"    # Ljava/lang/String;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "bSucc":Z
    const/4 v2, 0x0

    .line 309
    .local v2, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v3, p2}, Lcom/syu/util/Lrc;->ReadAPEv2(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 315
    if-eqz v3, :cond_2

    .line 316
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 322
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return v0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    if-eqz v2, :cond_0

    .line 316
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 315
    :goto_2
    if-eqz v2, :cond_1

    .line 316
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 320
    :cond_1
    :goto_3
    throw v4

    .line 317
    :catch_2
    move-exception v1

    .line 318
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 318
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 313
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 311
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method GetBufferW([BII)Ljava/lang/String;
    .locals 2
    .param p1, "pStream"    # [B
    .param p2, "iLenBuf"    # I
    .param p3, "iTypeEncodeFile"    # I

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/syu/util/Lrc;->getCharSet(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 230
    const-string v0, ""

    goto :goto_0
.end method

.method GetId3v1Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z
    .locals 5
    .param p1, "strFile"    # Ljava/lang/String;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "bSucc":Z
    const/4 v2, 0x0

    .line 257
    .local v2, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v3, p2}, Lcom/syu/util/Lrc;->ReadID3v1(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 263
    if-eqz v3, :cond_2

    .line 264
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 270
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    if-eqz v2, :cond_0

    .line 264
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 265
    :catch_1
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 263
    :goto_2
    if-eqz v2, :cond_1

    .line 264
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 268
    :cond_1
    :goto_3
    throw v4

    .line 265
    :catch_2
    move-exception v1

    .line 266
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 266
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 261
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 259
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method GetId3v2Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z
    .locals 5
    .param p1, "strFile"    # Ljava/lang/String;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "bSucc":Z
    const/4 v2, 0x0

    .line 329
    .local v2, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v3, p2}, Lcom/syu/util/Lrc;->ReadID3v2(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 335
    if-eqz v3, :cond_2

    .line 336
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 342
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v2, :cond_0

    .line 336
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 335
    :goto_2
    if-eqz v2, :cond_1

    .line 336
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 340
    :cond_1
    :goto_3
    throw v4

    .line 337
    :catch_2
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 337
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 333
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 331
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method GetId3v2_APIC(Ljava/lang/String;Lcom/syu/util/Id3Info;)V
    .locals 4
    .param p1, "strFile"    # Ljava/lang/String;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1    # "randomFile":Ljava/io/RandomAccessFile;
    .local v2, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/syu/util/Lrc;->ReadID3v2_APIC(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-eqz v2, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 75
    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 69
    :goto_2
    if-eqz v1, :cond_1

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 74
    :cond_1
    :goto_3
    throw v3

    .line 71
    :catch_2
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 67
    .end local v1    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 65
    .end local v1    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method IsValidFrameV22([B)Z
    .locals 3
    .param p1, "fhV22"    # [B

    .prologue
    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 515
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 511
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 512
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 510
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method IsValidFrameV23([B)Z
    .locals 3
    .param p1, "FrameID"    # [B

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 98
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 94
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 95
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ParseFields(Ljava/io/RandomAccessFile;IILcom/syu/util/Id3Info;)V
    .locals 18
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "nFieldsSize"    # I
    .param p3, "nFieldsNum"    # I
    .param p4, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v6, 0x3

    .line 435
    .local v6, "iEncode":I
    const/4 v2, 0x3

    new-array v14, v2, [Z

    .line 436
    .local v14, "bParse":[Z
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 437
    .local v16, "nValueSize":[B
    const/4 v2, 0x4

    new-array v13, v2, [B

    .line 438
    .local v13, "Flags":[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v15, v0, :cond_1

    .line 486
    :cond_0
    return-void

    .line 439
    :cond_1
    const/16 v2, 0xa

    move/from16 v0, p2

    if-le v0, v2, :cond_0

    .line 442
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 443
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 445
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 446
    .local v5, "len":[I
    add-int/lit8 v2, p2, -0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v3

    sub-int p2, v2, v3

    .line 449
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 448
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v17

    .line 450
    .local v17, "strName":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 451
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 452
    const/4 v4, 0x0

    aget v4, v5, v4

    sub-int v4, p2, v4

    int-to-long v8, v4

    sub-long/2addr v2, v8

    .line 451
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 453
    const-string v2, "Artist"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 455
    .local v10, "iLenTemp":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v14, v2

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v9

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    .line 456
    invoke-virtual/range {v7 .. v12}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 458
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 459
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 481
    .end local v10    # "iLenTemp":[I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v14, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-boolean v2, v14, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-boolean v2, v14, v2

    if-nez v2, :cond_0

    .line 484
    :cond_3
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int p2, p2, v2

    .line 438
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 460
    :cond_4
    const-string v2, "Album"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 461
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 462
    .restart local v10    # "iLenTemp":[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v14, v2

    .line 464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v9

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    .line 463
    invoke-virtual/range {v7 .. v12}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 465
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    goto :goto_1

    .line 467
    .end local v10    # "iLenTemp":[I
    :cond_5
    const-string v2, "Title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 468
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 469
    .restart local v10    # "iLenTemp":[I
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v14, v2

    .line 471
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v9

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    .line 470
    invoke-virtual/range {v7 .. v12}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 472
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 475
    .end local v10    # "iLenTemp":[I
    :cond_6
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 476
    .restart local v10    # "iLenTemp":[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v9

    .line 477
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    .line 476
    invoke-virtual/range {v7 .. v12}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    goto/16 :goto_1
.end method

.method ParseFramesV22(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V
    .locals 16
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "length"    # I
    .param p3, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v2, 0x3

    new-array v8, v2, [Z

    .line 521
    .local v8, "bParse":[Z
    const/4 v2, 0x1

    new-array v15, v2, [B

    .line 522
    .local v15, "tmp":[B
    const/4 v2, 0x6

    new-array v9, v2, [B

    .line 524
    .local v9, "fhV22":[B
    :goto_0
    const/4 v2, 0x6

    move/from16 v0, p2

    if-gt v0, v2, :cond_1

    .line 589
    :cond_0
    return-void

    .line 525
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 526
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    if-nez v2, :cond_2

    .line 527
    add-int/lit8 p2, p2, -0x1

    .line 528
    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 533
    const/4 v2, 0x0

    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14

    .line 534
    .local v14, "nReadByte":I
    const/4 v2, 0x6

    if-ne v14, v2, :cond_0

    .line 537
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/syu/util/Lrc;->IsValidFrameV22([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const/4 v2, 0x3

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/4 v3, 0x4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 541
    const/4 v3, 0x5

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    .line 540
    add-int v13, v2, v3

    .line 543
    .local v13, "nFrameLength":I
    if-ltz v13, :cond_0

    .line 546
    move/from16 v0, p2

    if-gt v13, v0, :cond_0

    .line 549
    if-eqz v13, :cond_0

    const/16 v2, 0x64

    if-gt v13, v2, :cond_0

    .line 552
    move v4, v13

    .line 553
    .local v4, "iLen":I
    const/4 v2, 0x1

    new-array v12, v2, [B

    .line 554
    .local v12, "iEncode":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v12, v2

    .line 555
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 556
    .local v5, "iLenTemp":[I
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v6, v13

    add-long v10, v2, v6

    .line 557
    .local v10, "dwPosNext":J
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_5

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_5

    .line 558
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 559
    add-int/lit8 v4, v4, -0x1

    .line 560
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 562
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 561
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 563
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 564
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 583
    :cond_3
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    aget-boolean v2, v8, v2

    if-nez v2, :cond_0

    .line 586
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 587
    add-int/lit8 v2, v13, 0x6

    sub-int p2, p2, v2

    goto/16 :goto_0

    .line 565
    :cond_5
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_6

    .line 566
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 567
    add-int/lit8 v4, v4, -0x1

    .line 568
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 570
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 569
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 571
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 572
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    goto :goto_1

    .line 573
    :cond_6
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3

    .line 574
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 575
    add-int/lit8 v4, v4, -0x1

    .line 576
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 578
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 577
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 579
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 580
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method ParseFramesV23(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V
    .locals 16
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "length"    # I
    .param p3, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v2, 0x3

    new-array v8, v2, [Z

    .line 596
    .local v8, "bParse":[Z
    const/4 v2, 0x1

    new-array v15, v2, [B

    .line 597
    .local v15, "tmp":[B
    const/16 v2, 0xa

    new-array v9, v2, [B

    .line 599
    .local v9, "fhV23":[B
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, p2

    if-gt v0, v2, :cond_1

    .line 668
    :cond_0
    return-void

    .line 600
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 601
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    if-nez v2, :cond_2

    .line 602
    add-int/lit8 p2, p2, -0x1

    .line 603
    goto :goto_0

    .line 606
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 607
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    if-nez v2, :cond_3

    .line 608
    add-int/lit8 p2, p2, -0x1

    .line 609
    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    sub-long/2addr v2, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 614
    const/4 v2, 0x0

    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14

    .line 615
    .local v14, "nReadByte":I
    const/16 v2, 0xa

    if-ne v14, v2, :cond_0

    .line 618
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/syu/util/Lrc;->IsValidFrameV23([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/syu/util/Lrc;->getInt_way2([BI)I

    move-result v13

    .line 622
    .local v13, "nFrameLength":I
    if-ltz v13, :cond_0

    .line 625
    move/from16 v0, p2

    if-gt v13, v0, :cond_0

    .line 628
    move v4, v13

    .line 629
    .local v4, "iLen":I
    const/4 v2, 0x1

    new-array v12, v2, [B

    .line 630
    .local v12, "iEncode":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v12, v2

    .line 631
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 632
    .local v5, "iLenTemp":[I
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v6, v13

    add-long v10, v2, v6

    .line 633
    .local v10, "dwPosNext":J
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_6

    .line 634
    const/4 v2, 0x3

    aget-byte v2, v9, v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_6

    .line 635
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 636
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 637
    add-int/lit8 v4, v4, -0x1

    .line 639
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 638
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 641
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 662
    :cond_4
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    aget-boolean v2, v8, v2

    if-nez v2, :cond_0

    .line 665
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 666
    add-int/lit8 v2, v13, 0xa

    sub-int p2, p2, v2

    goto/16 :goto_0

    .line 642
    :cond_6
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_7

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_7

    .line 643
    const/4 v2, 0x3

    aget-byte v2, v9, v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_7

    .line 644
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 645
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 646
    add-int/lit8 v4, v4, -0x1

    .line 648
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 647
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 649
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 650
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    goto :goto_1

    .line 651
    :cond_7
    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_4

    .line 652
    const/4 v2, 0x3

    aget-byte v2, v9, v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_4

    .line 653
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v8, v2

    .line 654
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 655
    add-int/lit8 v4, v4, -0x1

    .line 657
    const/4 v2, 0x0

    aget-byte v6, v12, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 656
    invoke-virtual/range {v2 .. v7}, Lcom/syu/util/Lrc;->ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 658
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 659
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method ParseFramesV23_APIC(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V
    .locals 18
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "length"    # I
    .param p3, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "bParse":Z
    const/4 v14, 0x1

    new-array v13, v14, [B

    .line 105
    .local v13, "tmp":[B
    const/16 v14, 0xa

    new-array v6, v14, [B

    .line 107
    .local v6, "fhV23":[B
    :goto_0
    const/16 v14, 0xa

    move/from16 v0, p2

    if-gt v0, v14, :cond_1

    .line 169
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 109
    const/4 v14, 0x0

    aget-byte v14, v13, v14

    if-nez v14, :cond_2

    .line 110
    add-int/lit8 p2, p2, -0x1

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 115
    const/4 v14, 0x0

    aget-byte v14, v13, v14

    if-nez v14, :cond_3

    .line 116
    add-int/lit8 p2, p2, -0x1

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    sub-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    const/4 v14, 0x0

    const/16 v15, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    .line 123
    .local v12, "nReadByte":I
    const/16 v14, 0xa

    if-ne v12, v14, :cond_0

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/syu/util/Lrc;->IsValidFrameV23([B)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 129
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/syu/util/Lrc;->getInt_way2([BI)I

    move-result v11

    .line 130
    .local v11, "nFrameLength":I
    if-ltz v11, :cond_0

    .line 133
    move/from16 v0, p2

    if-gt v11, v0, :cond_0

    .line 136
    move v8, v11

    .line 137
    .local v8, "iLen":I
    const/4 v14, 0x1

    new-array v7, v14, [B

    .line 138
    .local v7, "iEncode":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v7, v14

    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 140
    .local v4, "dwPosNext":J
    const/4 v14, 0x0

    aget-byte v14, v6, v14

    const/16 v15, 0x41

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    aget-byte v14, v6, v14

    const/16 v15, 0x50

    if-ne v14, v15, :cond_4

    const/4 v14, 0x2

    aget-byte v14, v6, v14

    const/16 v15, 0x49

    if-ne v14, v15, :cond_4

    .line 141
    const/4 v14, 0x3

    aget-byte v14, v6, v14

    const/16 v15, 0x43

    if-ne v14, v15, :cond_4

    .line 142
    const/4 v2, 0x1

    .line 143
    const/16 v14, 0xd

    if-le v8, v14, :cond_4

    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    const-wide/16 v16, 0xd

    add-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 145
    add-int/lit8 v8, v8, -0xd

    .line 147
    new-array v3, v8, [B

    .line 148
    .local v3, "data":[B
    if-eqz v3, :cond_4

    .line 149
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 151
    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_0

    .line 152
    array-length v15, v3

    .line 151
    invoke-static {v14, v3, v15}, Lcom/syu/util/ByteUtil;->indexOf([B[BI)I

    move-result v10

    .line 153
    .local v10, "imgStart":I
    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_1

    .line 154
    array-length v15, v3

    .line 153
    invoke-static {v14, v3, v15}, Lcom/syu/util/ByteUtil;->lastIndexOf([B[BI)I

    move-result v14

    add-int/lit8 v9, v14, 0x2

    .line 156
    .local v9, "imgEnd":I
    invoke-static {v10, v9, v3}, Lcom/syu/util/ByteUtil;->cutBytes(II[B)[B

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/syu/util/Id3Info;->dataPic:[B

    .line 163
    .end local v3    # "data":[B
    .end local v9    # "imgEnd":I
    .end local v10    # "imgStart":I
    :cond_4
    if-nez v2, :cond_0

    .line 166
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 167
    add-int/lit8 v14, v11, 0xa

    sub-int p2, p2, v14

    goto/16 :goto_0

    .line 151
    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 153
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method ReadAPEv2(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    .locals 10
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "bHasID3v1":Z
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x80

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 277
    const/4 v6, 0x0

    .line 302
    :goto_0
    return v6

    .line 279
    :cond_0
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 280
    .local v2, "id3v1tag":[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x80

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 282
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p1, v2, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 283
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    .line 284
    const/4 v0, 0x1

    .line 286
    :cond_1
    if-eqz v0, :cond_3

    const/16 v5, 0xa0

    .line 287
    .local v5, "nOffset":I
    :goto_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 289
    const/16 v6, 0x20

    new-array v1, v6, [B

    .line 290
    .local v1, "footer":[B
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {p1, v1, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 291
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_2

    .line 292
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_2

    const/4 v6, 0x4

    aget-byte v6, v1, v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_2

    const/4 v6, 0x5

    aget-byte v6, v1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    .line 293
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_2

    const/4 v6, 0x7

    aget-byte v6, v1, v6

    const/16 v7, 0x58

    if-eq v6, v7, :cond_4

    .line 294
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 286
    .end local v1    # "footer":[B
    .end local v5    # "nOffset":I
    :cond_3
    const/16 v5, 0x20

    goto :goto_1

    .line 296
    .restart local v1    # "footer":[B
    .restart local v5    # "nOffset":I
    :cond_4
    const/16 v6, 0xc

    invoke-virtual {p0, v1, v6}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v6

    add-int/lit8 v4, v6, -0x20

    .line 297
    .local v4, "nFieldSize":I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    add-int v8, v4, v5

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 299
    const/16 v6, 0x10

    invoke-virtual {p0, v1, v6}, Lcom/syu/util/Lrc;->getInt([BI)I

    move-result v3

    .line 300
    .local v3, "nFieldFooter":I
    invoke-virtual {p0, p1, v4, v3, p2}, Lcom/syu/util/Lrc;->ParseFields(Ljava/io/RandomAccessFile;IILcom/syu/util/Id3Info;)V

    .line 302
    iget-object v6, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method ReadAsciiText(Ljava/io/RandomAccessFile;I[IIZ)Ljava/lang/String;
    .locals 16
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "iLenMax"    # I
    .param p3, "iLenActual"    # [I
    .param p4, "iEncode"    # I
    .param p5, "bDetectEncode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p3, v12

    .line 362
    if-gtz p2, :cond_0

    .line 363
    const/4 v9, 0x0

    .line 426
    :goto_0
    return-object v9

    .line 365
    :cond_0
    const/16 v12, 0x400

    move/from16 v0, p2

    if-lt v0, v12, :cond_1

    .line 366
    const/4 v9, 0x0

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 369
    .local v10, "pos":J
    if-eqz p5, :cond_2

    const/4 v12, 0x3

    move/from16 v0, p2

    if-lt v0, v12, :cond_2

    .line 370
    const/4 v12, 0x3

    new-array v3, v12, [B

    .line 371
    .local v3, "cTemp":[B
    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 373
    const/4 v12, 0x3

    new-array v7, v12, [I

    .line 374
    .local v7, "iTemp":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v12, 0x3

    if-lt v5, v12, :cond_5

    .line 377
    const/4 v12, 0x0

    aget v12, v7, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    aget v12, v7, v12

    const/16 v13, 0xfe

    if-ne v12, v13, :cond_6

    .line 378
    const/16 p4, 0x1

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 380
    add-int/lit8 p2, p2, -0x2

    .line 392
    .end local v3    # "cTemp":[B
    .end local v5    # "i":I
    .end local v7    # "iTemp":[I
    :cond_2
    :goto_2
    const/4 v12, 0x1

    move/from16 v0, p4

    if-eq v0, v12, :cond_9

    const/4 v12, 0x2

    move/from16 v0, p4

    if-eq v0, v12, :cond_9

    const/4 v2, 0x0

    .line 394
    .local v2, "b2ByteSeprator":Z
    :goto_3
    const/4 v12, 0x1

    new-array v4, v12, [B

    .line 395
    .local v4, "ch":[B
    add-int/lit8 v12, p2, 0x2

    new-array v8, v12, [B

    .line 396
    .local v8, "pStream":[B
    const/4 v12, 0x0

    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 398
    move/from16 v6, p2

    .line 399
    .local v6, "iLenTemp":I
    :cond_3
    if-gtz v6, :cond_a

    .line 422
    :cond_4
    :goto_4
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    sub-long/2addr v14, v10

    long-to-int v13, v14

    aput v13, p3, v12

    .line 423
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    int-to-long v14, v6

    add-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 425
    add-int/lit8 v12, p2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v8, v12, v1}, Lcom/syu/util/Lrc;->GetBufferW([BII)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "strStream":Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v2    # "b2ByteSeprator":Z
    .end local v4    # "ch":[B
    .end local v6    # "iLenTemp":I
    .end local v8    # "pStream":[B
    .end local v9    # "strStream":Ljava/lang/String;
    .restart local v3    # "cTemp":[B
    .restart local v5    # "i":I
    .restart local v7    # "iTemp":[I
    :cond_5
    aget-byte v12, v3, v5

    and-int/lit16 v12, v12, 0xff

    aput v12, v7, v5

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 381
    :cond_6
    const/4 v12, 0x0

    aget v12, v7, v12

    const/16 v13, 0xfe

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    aget v12, v7, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_7

    .line 382
    const/16 p4, 0x2

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 384
    add-int/lit8 p2, p2, -0x2

    .line 385
    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    aget v12, v7, v12

    const/16 v13, 0xef

    if-ne v12, v13, :cond_8

    const/4 v12, 0x1

    aget v12, v7, v12

    const/16 v13, 0xbb

    if-ne v12, v13, :cond_8

    const/4 v12, 0x2

    aget v12, v7, v12

    const/16 v13, 0xbf

    if-ne v12, v13, :cond_8

    .line 386
    const/16 p4, 0x3

    .line 387
    add-int/lit8 p2, p2, -0x3

    .line 388
    goto :goto_2

    .line 389
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_2

    .line 392
    .end local v3    # "cTemp":[B
    .end local v5    # "i":I
    .end local v7    # "iTemp":[I
    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    .line 400
    .restart local v2    # "b2ByteSeprator":Z
    .restart local v4    # "ch":[B
    .restart local v6    # "iLenTemp":I
    .restart local v8    # "pStream":[B
    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 401
    const/4 v12, 0x0

    aget v12, p3, v12

    const/4 v13, 0x0

    aget-byte v13, v4, v13

    aput-byte v13, v8, v12

    .line 402
    const/4 v12, 0x0

    aget v13, p3, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, p3, v12

    .line 403
    add-int/lit8 v6, v6, -0x1

    .line 404
    if-lez v6, :cond_3

    .line 405
    const/4 v12, 0x0

    aget-byte v12, v4, v12

    if-nez v12, :cond_3

    .line 406
    if-eqz v2, :cond_4

    .line 407
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 408
    const/4 v12, 0x0

    aget v12, p3, v12

    const/4 v13, 0x0

    aget-byte v13, v4, v13

    aput-byte v13, v8, v12

    .line 409
    const/4 v12, 0x0

    aget v13, p3, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, p3, v12

    .line 410
    add-int/lit8 v6, v6, -0x1

    .line 411
    const/4 v12, 0x0

    aget-byte v12, v4, v12

    if-nez v12, :cond_3

    .line 412
    const/4 v12, 0x0

    aget v12, p3, v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    .line 413
    const/4 v12, 0x0

    aget v12, p3, v12

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    goto/16 :goto_4
.end method

.method ReadID3v1(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    .locals 12
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 174
    .local v6, "len":J
    const-wide/16 v10, 0x80

    cmp-long v5, v6, v10

    if-gtz v5, :cond_0

    .line 175
    const/4 v5, 0x0

    .line 220
    :goto_0
    return v5

    .line 177
    :cond_0
    const-wide/16 v8, 0x80

    .line 178
    .local v8, "seekPos":J
    sub-long v10, v6, v8

    invoke-virtual {p1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    const/4 v5, 0x3

    new-array v2, v5, [B

    .line 181
    .local v2, "chIdent":[B
    const/4 v5, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v2, v5, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 182
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/16 v10, 0x54

    if-ne v5, v10, :cond_1

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    const/16 v10, 0x41

    if-ne v5, v10, :cond_1

    const/4 v5, 0x2

    aget-byte v5, v2, v5

    const/16 v10, 0x47

    if-eq v5, v10, :cond_2

    .line 183
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 185
    :cond_2
    const/16 v5, 0x1e

    new-array v3, v5, [B

    .line 186
    .local v3, "chTitle":[B
    const/16 v5, 0x1e

    new-array v1, v5, [B

    .line 187
    .local v1, "chArtist":[B
    const/16 v5, 0x1e

    new-array v0, v5, [B

    .line 189
    .local v0, "chAlbum":[B
    const/4 v5, 0x0

    const/16 v10, 0x1e

    invoke-virtual {p1, v3, v5, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 190
    const/4 v5, 0x0

    const/16 v10, 0x1e

    invoke-virtual {p1, v1, v5, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 191
    const/4 v5, 0x0

    const/16 v10, 0x1e

    invoke-virtual {p1, v0, v5, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 193
    const/16 v5, 0x1d

    const/4 v10, 0x0

    aput-byte v10, v3, v5

    .line 194
    const/16 v5, 0x1d

    const/4 v10, 0x0

    aput-byte v10, v1, v5

    .line 195
    const/16 v5, 0x1d

    const/4 v10, 0x0

    aput-byte v10, v0, v5

    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, "i":I
    const/16 v4, 0x1d

    :goto_1
    if-gez v4, :cond_4

    .line 205
    :cond_3
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-nez v5, :cond_5

    .line 206
    const/4 v5, 0x0

    goto :goto_0

    .line 199
    :cond_4
    aget-byte v5, v1, v4

    const/16 v10, 0x20

    if-ne v5, v10, :cond_3

    .line 200
    const/4 v5, 0x0

    aput-byte v5, v1, v4

    .line 198
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 208
    :cond_5
    const/16 v5, 0x1e

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v5, v10}, Lcom/syu/util/Lrc;->GetBufferW([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 209
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 210
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strTitle:Ljava/lang/String;

    .line 212
    :cond_6
    const/16 v5, 0x1e

    const/4 v10, 0x0

    invoke-virtual {p0, v1, v5, v10}, Lcom/syu/util/Lrc;->GetBufferW([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 213
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 214
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    .line 216
    :cond_7
    const/16 v5, 0x1e

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v5, v10}, Lcom/syu/util/Lrc;->GetBufferW([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 217
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 218
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/syu/util/Id3Info;->strAlbum:Ljava/lang/String;

    .line 220
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method ReadID3v2(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)Z
    .locals 8
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 491
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 492
    .local v0, "dwLenFile":J
    new-array v2, v5, [B

    .line 493
    .local v2, "id3v2Header":[B
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 494
    aget-byte v5, v2, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_0

    aget-byte v5, v2, v4

    const/16 v6, 0x44

    if-ne v5, v6, :cond_0

    aget-byte v5, v2, v7

    const/16 v6, 0x33

    if-eq v5, v6, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v3

    .line 497
    :cond_1
    const/4 v5, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_2

    .line 499
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v5, v6

    .line 498
    invoke-virtual {p0, p1, v5, p2}, Lcom/syu/util/Lrc;->ParseFramesV22(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V

    .line 504
    :goto_1
    iget-object v5, p2, Lcom/syu/util/Id3Info;->strArtist:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v5, v6

    .line 501
    invoke-virtual {p0, p1, v5, p2}, Lcom/syu/util/Lrc;->ParseFramesV23(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V

    goto :goto_1
.end method

.method ReadID3v2_APIC(Ljava/io/RandomAccessFile;Lcom/syu/util/Id3Info;)V
    .locals 6
    .param p1, "randomFile"    # Ljava/io/RandomAccessFile;
    .param p2, "id3Info"    # Lcom/syu/util/Id3Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 80
    .local v0, "dwLenFile":J
    new-array v2, v4, [B

    .line 81
    .local v2, "id3v2Header":[B
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 82
    aget-byte v3, v2, v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_0

    aget-byte v3, v2, v5

    const/16 v4, 0x33

    if-eq v3, v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v3, 0x4

    aget-byte v3, v2, v3

    if-eq v3, v5, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-int v3, v4

    .line 86
    invoke-virtual {p0, p1, v3, p2}, Lcom/syu/util/Lrc;->ParseFramesV23_APIC(Ljava/io/RandomAccessFile;ILcom/syu/util/Id3Info;)V

    goto :goto_0
.end method

.method getCharSet(I)Ljava/lang/String;
    .locals 2
    .param p1, "iTypeEncodeFile"    # I

    .prologue
    .line 234
    const-string v0, "GBK"

    .line 235
    .local v0, "encoding":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 246
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/util/FuncUtils;->getCharset(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    const-string v0, "UTF-16LE"

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "UTF-16BE"

    .line 241
    goto :goto_0

    .line 243
    :pswitch_2
    const-string v0, "UTF-8"

    .line 244
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getId3Info(Ljava/lang/String;)Lcom/syu/util/Id3Info;
    .locals 3
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/syu/util/Id3Info;

    invoke-direct {v0}, Lcom/syu/util/Id3Info;-><init>()V

    .line 45
    .local v0, "id3Info":Lcom/syu/util/Id3Info;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "strLower":Ljava/lang/String;
    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/syu/util/Lrc;->GetAPEv2Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/syu/util/Lrc;->GetId3v2Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/syu/util/Lrc;->GetId3v1Info(Ljava/lang/String;Lcom/syu/util/Id3Info;)Z

    .line 53
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/syu/util/Lrc;->GetId3v2_APIC(Ljava/lang/String;Lcom/syu/util/Id3Info;)V

    .line 57
    .end local v1    # "strLower":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getInt([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 351
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 352
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 351
    add-int/2addr v0, v1

    .line 353
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 351
    add-int/2addr v0, v1

    .line 353
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 351
    add-int/2addr v0, v1

    return v0
.end method

.method public getInt_way2([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 346
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 347
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 346
    add-int/2addr v0, v1

    .line 347
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 346
    add-int/2addr v0, v1

    return v0
.end method
