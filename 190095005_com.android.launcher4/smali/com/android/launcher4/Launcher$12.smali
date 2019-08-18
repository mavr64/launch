.class Lcom/android/launcher4/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/fyt/car/IUiRefresher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    .line 4445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh([I[J[F[Ljava/lang/String;[B)V
    .locals 25
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    .line 4449
    const-string v14, ""

    .local v14, "musicName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 4450
    .local v18, "state":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4451
    .local v5, "artist":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4452
    .local v4, "album":Ljava/lang/String;
    const/16 v16, 0x0

    .line 4453
    .local v16, "path":Ljava/lang/String;
    const/4 v15, 0x0

    .line 4454
    .local v15, "musictitle":Ljava/lang/String;
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 4456
    const/16 v22, 0x0

    aget-object v14, p4, v22

    .line 4457
    const/16 v22, 0x1

    aget-object v5, p4, v22

    .line 4458
    const/16 v22, 0x2

    aget-object v18, p4, v22

    .line 4459
    const/16 v22, 0x3

    aget-object v4, p4, v22

    .line 4460
    const/16 v22, 0x4

    aget-object v16, p4, v22

    .line 4462
    :cond_0
    if-eqz v16, :cond_1

    const-string v22, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_1

    .line 4464
    const-string v22, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 4468
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->musicNamePre:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 4469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v14, v0, Lcom/android/launcher4/Launcher;->musicNamePre:Ljava/lang/String;

    .line 4470
    new-instance v13, Lcom/syu/util/Lrc;

    invoke-direct {v13}, Lcom/syu/util/Lrc;-><init>()V

    .line 4471
    .local v13, "lrc":Lcom/syu/util/Lrc;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/syu/util/Lrc;->getId3Info(Ljava/lang/String;)Lcom/syu/util/Id3Info;

    move-result-object v12

    .line 4472
    .local v12, "info":Lcom/syu/util/Id3Info;
    iget-object v10, v12, Lcom/syu/util/Id3Info;->dataPic:[B

    .line 4474
    .local v10, "dataPic":[B
    if-eqz v10, :cond_f

    array-length v0, v10

    move/from16 v22, v0

    if-lez v22, :cond_f

    .line 4488
    const/16 v22, 0x0

    .line 4489
    array-length v0, v10

    move/from16 v23, v0

    .line 4488
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4491
    .local v6, "bp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 4492
    sget-object v22, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 4493
    const v23, 0x7f0a001b

    .line 4492
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 4493
    if-eqz v22, :cond_e

    .line 4495
    invoke-static {v6}, Lcom/android/launcher4/Launcher;->makeRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4499
    :goto_0
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 4501
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->ivALbumBg:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 4502
    const-string v22, "hy"

    const-string v23, "ivALbumBg"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->ivALbumBg:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4521
    .end local v6    # "bp":Landroid/graphics/Bitmap;
    .end local v10    # "dataPic":[B
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "info":Lcom/syu/util/Id3Info;
    .end local v13    # "lrc":Lcom/syu/util/Lrc;
    :cond_2
    :goto_1
    const-string v22, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$36(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$36(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    .line 4526
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->music_playpause_icon:I

    move/from16 v23, v0

    .line 4525
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4528
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$37(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 4530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$37(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    .line 4531
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->music_playpause_icon:I

    move/from16 v23, v0

    .line 4530
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4534
    :cond_4
    if-eqz v15, :cond_6

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 4535
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 4536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$38(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 4537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$38(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4539
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$39(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 4540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$39(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4545
    :cond_6
    if-eqz v5, :cond_7

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 4546
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 4547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$40(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 4549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$40(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4552
    :cond_7
    if-eqz v4, :cond_8

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 4553
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 4554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$41(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 4556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$41(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4560
    :cond_8
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    .line 4562
    const/16 v22, 0x1

    aget-wide v8, p2, v22

    .line 4563
    .local v8, "curProgress":J
    const/16 v22, 0x0

    aget-wide v20, p2, v22

    .line 4564
    .local v20, "totalProgress":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_b

    .line 4565
    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-gez v22, :cond_9

    .line 4566
    const-wide/16 v8, 0x0

    .line 4568
    :cond_9
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v8

    div-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .line 4569
    .local v17, "precent":I
    const/16 v22, 0x5

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 4570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;

    move-result-object v22

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4574
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$43(Lcom/android/launcher4/Launcher;)Landroid/widget/ProgressBar;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 4575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$43(Lcom/android/launcher4/Launcher;)Landroid/widget/ProgressBar;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4588
    .end local v17    # "precent":I
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher4/Launcher;->timeParse(J)Ljava/lang/String;

    move-result-object v7

    .line 4589
    .local v7, "cur":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/Launcher;->timeParse(J)Ljava/lang/String;

    move-result-object v19

    .line 4590
    .local v19, "total":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$44(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_c

    if-eqz v7, :cond_c

    .line 4591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$44(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4594
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$45(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_d

    if-eqz v19, :cond_d

    .line 4595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$45(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4639
    .end local v7    # "cur":Ljava/lang/String;
    .end local v8    # "curProgress":J
    .end local v19    # "total":Ljava/lang/String;
    .end local v20    # "totalProgress":J
    :cond_d
    :goto_3
    return-void

    .line 4497
    .restart local v6    # "bp":Landroid/graphics/Bitmap;
    .restart local v10    # "dataPic":[B
    .restart local v12    # "info":Lcom/syu/util/Id3Info;
    .restart local v13    # "lrc":Lcom/syu/util/Lrc;
    :cond_e
    const/16 v22, 0x82

    const/16 v23, 0x82

    const/high16 v24, 0x41300000    # 11.0f

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v6, v0, v1, v2}, Lcom/syu/util/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_0

    .line 4511
    .end local v6    # "bp":Landroid/graphics/Bitmap;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher4/Launcher;->lastpath:Ljava/lang/String;

    .line 4512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->ivALbumBg:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 4514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->ivALbumBg:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    .line 4515
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->music_album_def:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4578
    .end local v10    # "dataPic":[B
    .end local v12    # "info":Lcom/syu/util/Id3Info;
    .end local v13    # "lrc":Lcom/syu/util/Lrc;
    .restart local v8    # "curProgress":J
    .restart local v17    # "precent":I
    .restart local v20    # "totalProgress":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;

    move-result-object v22

    if-eqz v22, :cond_11

    .line 4580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4582
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$43(Lcom/android/launcher4/Launcher;)Landroid/widget/ProgressBar;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 4583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$43(Lcom/android/launcher4/Launcher;)Landroid/widget/ProgressBar;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 4606
    .end local v8    # "curProgress":J
    .end local v17    # "precent":I
    .end local v20    # "totalProgress":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$36(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_13

    .line 4608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$36(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    .line 4609
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->music_pause_icon:I

    move/from16 v23, v0

    .line 4608
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4611
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$37(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_14

    .line 4613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$37(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v22

    .line 4614
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lshare/ResValue;->music_pause_icon:I

    move/from16 v23, v0

    .line 4613
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4616
    :cond_14
    if-eqz v15, :cond_16

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 4617
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$38(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_15

    .line 4621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$38(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4623
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$39(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_16

    .line 4625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$39(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4629
    :cond_16
    if-eqz v5, :cond_d

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 4630
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 4632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$40(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 4634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Launcher$12;->this$0:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->access$40(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
