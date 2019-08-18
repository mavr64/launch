.class public Lcom/syu/widget/music/DateTimeWidget1;
.super Lcom/syu/widget/music/Widget;
.source "DateTimeWidget1.java"


# static fields
.field private static final mImageId:[I

.field private static final mImageRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 37
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num00:I

    aput v1, v0, v3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num01:I

    aput v1, v0, v4

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num02:I

    aput v1, v0, v5

    .line 38
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num03:I

    aput v1, v0, v6

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num04:I

    aput v1, v0, v7

    const/4 v1, 0x5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 39
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 40
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num09:I

    aput v2, v0, v1

    .line 36
    sput-object v0, Lcom/syu/widget/music/DateTimeWidget1;->mImageRes:[I

    .line 42
    new-array v0, v7, [I

    .line 43
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_ht1:I

    aput v1, v0, v3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_hu1:I

    aput v1, v0, v4

    .line 44
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_mt1:I

    aput v1, v0, v5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_mu1:I

    aput v1, v0, v6

    .line 42
    sput-object v0, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/syu/widget/music/Widget;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method private refreshData(Landroid/widget/RemoteViews;Lcom/syu/weather/WeatherDescription;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "weather"    # Lcom/syu/weather/WeatherDescription;

    .prologue
    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->weather_city:I

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->weather_temp_range:I

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->getTemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->weather_temp:I

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->getCurTem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->weather_weather:I

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->getWeather()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->weather_imge:I

    .line 124
    iget-object v1, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/syu/weather/WeatherDescription;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syu/util/WeatherUtils;->getWeatherImagId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private updateWeather(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 111
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mCurDescription:Lcom/syu/weather/WeatherDescription;

    invoke-direct {p0, p1, v0}, Lcom/syu/widget/music/DateTimeWidget1;->refreshData(Landroid/widget/RemoteViews;Lcom/syu/weather/WeatherDescription;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected add()V
    .locals 0

    .prologue
    .line 141
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->addWidget(Lcom/syu/widget/music/Widget;)V

    .line 142
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->add()V

    .line 143
    return-void
.end method

.method addLisenter(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 131
    .local v1, "pendIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dt_layout:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 132
    return-void
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->removeWidget(Lcom/syu/widget/music/Widget;)V

    .line 148
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->delete()V

    .line 149
    return-void
.end method

.method getLayoutId()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->fyt_xml_dtwidget1:I

    iput v0, p0, Lcom/syu/widget/music/DateTimeWidget1;->layoutId:I

    .line 137
    return-void
.end method

.method updateViews(Landroid/widget/RemoteViews;)V
    .locals 14
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 54
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_weekday1:I

    iget-object v8, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/syu/widget/music/util/TimeUtil;->getWeekDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    sget-object v7, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 67
    :goto_0
    iget-object v7, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/syu/widget/music/util/TimeUtil;->b24Hour(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_ampm1:I

    invoke-virtual {p1, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 79
    :goto_1
    iget-object v7, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/syu/widget/music/util/TimeUtil;->getCurStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "hm":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 82
    .local v5, "times":[C
    const/4 v3, -0x1

    .line 83
    .local v3, "index":I
    array-length v4, v5

    .line 85
    .local v4, "len":I
    if-ne v4, v12, :cond_4

    .line 86
    sget-object v7, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    aget v7, v7, v11

    invoke-virtual {p1, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    sget-object v7, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    aget v7, v7, v11

    invoke-virtual {p1, v7, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 93
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v4, :cond_5

    .line 107
    :goto_4
    invoke-direct {p0, p1}, Lcom/syu/widget/music/DateTimeWidget1;->updateWeather(Landroid/widget/RemoteViews;)V

    .line 108
    return-void

    .line 57
    .end local v1    # "hm":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "len":I
    .end local v5    # "times":[C
    :pswitch_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_date1:I

    iget-object v8, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    const-string v9, "yyyy-MM-dd"

    invoke-static {v8, v9}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_date1:I

    iget-object v8, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    const-string v9, "yyyy/MM/dd"

    invoke-static {v8, v9}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_date1:I

    iget-object v8, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    const-string v9, "yyyy.MM.dd"

    invoke-static {v8, v9}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_ampm1:I

    invoke-virtual {p1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    sget-object v7, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->dt_ampm1:I

    iget-object v8, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/syu/widget/music/util/TimeUtil;->getAmPm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v8, v7, Lshare/ResValue;->dt_ampm1:I

    iget-object v7, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/syu/widget/music/util/TimeUtil;->getAmPm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/syu/widget/music/DateTimeWidget1;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0099

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->im_am:I

    :goto_5
    invoke-virtual {p1, v8, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->im_pm:I

    goto :goto_5

    .line 88
    .restart local v1    # "hm":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "times":[C
    :cond_4
    if-le v4, v12, :cond_0

    .line 89
    sget-object v7, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    aget v7, v7, v11

    invoke-virtual {p1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 94
    .restart local v2    # "i":I
    :cond_5
    :try_start_0
    aget-char v7, v5, v2

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_6

    .line 95
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    const/4 v9, 0x0

    aget-char v10, v5, v2

    aput-char v10, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    const/4 v7, 0x0

    sget-object v8, Lcom/syu/widget/music/DateTimeWidget1;->mImageRes:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    if-ltz v3, :cond_6

    .line 98
    if-le v4, v12, :cond_7

    move v6, v2

    .line 99
    .local v6, "w":I
    :goto_6
    sget-object v7, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    const/4 v8, 0x0

    sget-object v9, Lcom/syu/widget/music/DateTimeWidget1;->mImageId:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget v7, v7, v8

    sget-object v8, Lcom/syu/widget/music/DateTimeWidget1;->mImageRes:[I

    aget v8, v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v6    # "w":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 98
    :cond_7
    add-int/lit8 v6, v2, 0x1

    goto :goto_6

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
