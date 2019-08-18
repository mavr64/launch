.class public Lcom/syu/widget/music/DateNaviWidget;
.super Lcom/syu/widget/music/Widget;
.source "DateNaviWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vanness"

.field private static count:I = 0x0

.field private static final layoutName:Ljava/lang/String; = "fyt_xml_naviwidget"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/syu/widget/music/DateNaviWidget;->count:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_id"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/syu/widget/music/Widget;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected add()V
    .locals 0

    .prologue
    .line 128
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->addWidget(Lcom/syu/widget/music/Widget;)V

    .line 129
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->add()V

    .line 130
    return-void
.end method

.method addLisenter(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.autonavi.amapauto"

    .line 147
    const-string v4, "com.autonavi.auto.remote.fill.UsbFillActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/syu/widget/music/DateNaviWidget;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 149
    .local v1, "pendIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->mapview:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    return-void
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 134
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->removeWidget(Lcom/syu/widget/music/Widget;)V

    .line 135
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->delete()V

    .line 136
    return-void
.end method

.method getLayoutId()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "fyt_xml_naviwidget"

    invoke-virtual {p0, v0}, Lcom/syu/widget/music/DateNaviWidget;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/syu/widget/music/DateNaviWidget;->layoutId:I

    .line 141
    return-void
.end method

.method protected updateViews(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v5, 0x0

    .line 40
    sget v2, Lcom/syu/car/CarStates;->mAccState:I

    if-nez v2, :cond_0

    .line 41
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->car_speed:I

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->cur_distance:I

    const-string v3, "0m"

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->car:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 124
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 49
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dynamic_trail:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->map_bg1:I

    sget v4, Lcom/syu/widget/music/DateNaviWidget;->count:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 50
    sget v2, Lcom/syu/widget/music/DateNaviWidget;->count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/syu/widget/music/DateNaviWidget;->count:I

    .line 51
    sget v2, Lcom/syu/widget/music/DateNaviWidget;->count:I

    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 52
    sput v5, Lcom/syu/widget/music/DateNaviWidget;->count:I

    .line 59
    :cond_1
    :goto_1
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mTurnIcon:I

    packed-switch v2, :pswitch_data_0

    .line 95
    :goto_2
    :pswitch_0
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCameraDis:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 96
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->camera:I

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    :goto_3
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_4

    .line 103
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 104
    .local v0, "dis":F
    const-string v2, "%1$.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->cur_distance:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "km"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 110
    .end local v0    # "dis":F
    .end local v1    # "str":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->car_speed:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    sget v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurState:I

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 116
    :sswitch_0
    sput v5, Lcom/android/launcher4/MyAutoMapReceiver;->mTurnIcon:I

    .line 117
    sput v5, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 118
    sput v5, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    .line 119
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->car_speed:I

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->cur_distance:I

    const-string v3, "0m"

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->car:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dynamic_trail:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->map_bg1:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 61
    :pswitch_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->car:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 64
    :pswitch_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_left:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 67
    :pswitch_3
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_right:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 70
    :pswitch_4
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_left_up:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 73
    :pswitch_5
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_right_up:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 76
    :pswitch_6
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_leftdown:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 79
    :pswitch_7
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_rightdown:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 82
    :pswitch_8
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_leftback:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 85
    :pswitch_9
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->straight:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 88
    :pswitch_a
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->tunnel:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 91
    :pswitch_b
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->map_instr:I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->turn_rightback:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 98
    :cond_3
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->camera:I

    invoke-virtual {p1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 107
    :cond_4
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->cur_distance:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/android/launcher4/MyAutoMapReceiver;->mCurDis_Remain:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method
