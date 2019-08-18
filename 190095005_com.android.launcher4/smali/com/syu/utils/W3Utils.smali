.class public Lcom/syu/utils/W3Utils;
.super Ljava/lang/Object;
.source "W3Utils.java"

# interfaces
.implements Lcom/syu/remote/Callback$OnRefreshLisenter;


# static fields
.field public static final CLD_MAP_PKG_FORMAT:Ljava/lang/String; = "cld\\.navi\\.(c|k|p)\\d+\\.mainframe"

.field static enable:Z

.field static mFilterApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mHasFilter:Z

.field static maxCount:I

.field static utils:Lcom/syu/utils/W3Utils;


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/Dialog;

.field mTools:Lcom/syu/remote/RemoteTools;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    sput-object v1, Lcom/syu/utils/W3Utils;->utils:Lcom/syu/utils/W3Utils;

    .line 42
    sput-object v1, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    .line 43
    sput-boolean v0, Lcom/syu/utils/W3Utils;->mHasFilter:Z

    .line 44
    sput v0, Lcom/syu/utils/W3Utils;->maxCount:I

    .line 48
    sput-boolean v0, Lcom/syu/utils/W3Utils;->enable:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    .line 52
    const-string v0, "com.syu.car"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 53
    const-string v0, "com.syu.radio"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 55
    const-string v0, "cn.com.tiros.android.navidog"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 56
    const-string v0, "cn.com.tiros.android.navidog4x"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 57
    const-string v0, "com.autonavi.xmgd.navigator"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 58
    const-string v0, "com.baidu.navi"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 59
    const-string v0, "cld.navi.mobile.mainframe"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 60
    const-string v0, "com.mapbar.android.mapbarmap"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 61
    const-string v0, "com.mapbar.android.carnavi"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 62
    const-string v0, "title.navi"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 63
    const-string v0, "com.mxnavi.mxnavi"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 64
    const-string v0, "com.autonavi.amapauto"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 66
    const-string v0, "cn.kuwo.player"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 67
    const-string v0, "cn.kuwo.kwmusichd"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 68
    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 69
    const-string v0, "com.kuwo.kwmusiccar"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 70
    const-string v0, "com.kugou.android"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 71
    const-string v0, "com.duomi.android"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 72
    const-string v0, "cmccwm.mobilemusic"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 73
    const-string v0, "fm.xiami.main"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.tencent.qqmusic"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 75
    const-string v0, "com.tencent.qqmusicpad"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 76
    const-string v0, "com.tencent.karaoke"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 77
    const-string v0, "com.ximalaya.ting.android"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 78
    const-string v0, "com.ting.mp3.android"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 80
    const-string v0, "com.qiyi.video"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 81
    const-string v0, "com.tencent.qqlivehd"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 82
    const-string v0, "com.youku.pad"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 83
    const-string v0, "com.youku.phone"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 84
    const-string v0, "com.tudou.xoom.android"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 85
    const-string v0, "com.sds.android.ttpod"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 86
    const-string v0, "tv.pps.mobile"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 87
    const-string v0, "com.baidu.video"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 88
    const-string v0, "com.letv.android.client"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 89
    const-string v0, "com.sohu.sohuvideo"

    invoke-static {v0}, Lcom/syu/utils/W3Utils;->addFilterApp(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mTools:Lcom/syu/remote/RemoteTools;

    .line 46
    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    .line 139
    sget-boolean v0, Lcom/syu/utils/W3Utils;->enable:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/syu/remote/RemoteTools;

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    const-string v2, "com.syu.unicar.ToolkitService"

    const-string v3, "com.syu.unicar"

    invoke-direct {v0, v1, v2, v3}, Lcom/syu/remote/RemoteTools;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mTools:Lcom/syu/remote/RemoteTools;

    .line 141
    iget-object v0, p0, Lcom/syu/utils/W3Utils;->mTools:Lcom/syu/remote/RemoteTools;

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    .line 142
    iget-object v0, p0, Lcom/syu/utils/W3Utils;->mTools:Lcom/syu/remote/RemoteTools;

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v4, p0, v1}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 143
    iget-object v0, p0, Lcom/syu/utils/W3Utils;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {v0}, Lcom/syu/remote/RemoteTools;->bind()V

    .line 145
    :cond_0
    return-void
.end method

.method public static addFilterApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    .line 108
    :cond_2
    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUtils()Lcom/syu/utils/W3Utils;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/syu/utils/W3Utils;->utils:Lcom/syu/utils/W3Utils;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/syu/utils/W3Utils;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 114
    const-string v2, ""

    .line 116
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    const-string v7, "get"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/syu/utils/Tools;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 118
    const-string v9, "ro.client.foreign"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "false"

    aput-object v9, v7, v8

    .line 116
    invoke-static {v3, v6, v7}, Lcom/syu/utils/Tools;->callMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-ge v3, v6, :cond_2

    :cond_0
    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/syu/utils/W3Utils;->enable:Z

    .line 124
    sget-object v3, Lcom/syu/utils/W3Utils;->utils:Lcom/syu/utils/W3Utils;

    if-nez v3, :cond_1

    .line 125
    new-instance v3, Lcom/syu/utils/W3Utils;

    invoke-direct {v3, p0}, Lcom/syu/utils/W3Utils;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/syu/utils/W3Utils;->utils:Lcom/syu/utils/W3Utils;

    .line 127
    :cond_1
    sget-object v3, Lcom/syu/utils/W3Utils;->utils:Lcom/syu/utils/W3Utils;

    return-object v3

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 122
    goto :goto_1
.end method

.method static matcher(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v2, "cld\\.navi\\.(c|k|p)\\d+\\.mainframe"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 312
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 313
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static removeFilterApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method check(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 252
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 253
    .local v0, "c":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .end local v0    # "c":Landroid/content/ComponentName;
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 259
    invoke-virtual {p0, v3}, Lcom/syu/utils/W3Utils;->getRunCount(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-------------- > intent pkg == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHasFilter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/utils/W3Utils;->mHasFilter:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count < maxCount  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v4, Lcom/syu/utils/W3Utils;->maxCount:I

    if-ge v1, v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 261
    sget-boolean v4, Lcom/syu/utils/W3Utils;->mHasFilter:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/syu/utils/W3Utils;->mFilterApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/syu/utils/W3Utils;->matcher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    sget v4, Lcom/syu/utils/W3Utils;->maxCount:I

    if-ge v1, v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 264
    add-int/lit8 v2, v1, 0x1

    .line 265
    .local v2, "countNew":I
    invoke-virtual {p0, v3, v2}, Lcom/syu/utils/W3Utils;->saveRunCount(Ljava/lang/String;I)I

    goto :goto_0

    .line 260
    .end local v2    # "countNew":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public check(Landroid/content/Intent;IIII)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # I
    .param p3, "msg"    # I
    .param p4, "positive"    # I
    .param p5, "negative"    # I

    .prologue
    .line 272
    sget-boolean v1, Lcom/syu/utils/W3Utils;->enable:Z

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2

    .line 274
    new-instance v0, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    .line 278
    .end local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    :cond_2
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    instance-of v1, v1, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    if-eqz v1, :cond_3

    .line 279
    iget-object v0, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    .line 280
    .restart local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    invoke-virtual {v0, p2}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setTitle(I)V

    .line 281
    invoke-virtual {v0, p3}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setMsg(I)V

    .line 282
    invoke-virtual {v0, p4, p5}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setButton(II)V

    .line 285
    .end local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    :cond_3
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/syu/utils/W3Utils;->check(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public check(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "negative"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------- > sofia 3G enable == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/utils/W3Utils;->enable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 292
    sget-boolean v1, Lcom/syu/utils/W3Utils;->enable:Z

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2

    .line 294
    new-instance v0, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    iput-object v0, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    .line 298
    .end local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    :cond_2
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    instance-of v1, v1, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    if-eqz v1, :cond_3

    .line 299
    iget-object v0, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/syu/utils/W3DialogUtils$CustomDialog;

    .line 300
    .restart local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    invoke-virtual {v0, p2}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v0, p3}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setMsg(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v0, p4, p5}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0    # "dialog":Lcom/syu/utils/W3DialogUtils$CustomDialog;
    :cond_3
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lcom/syu/utils/W3Utils;->check(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method clean()V
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method getRunCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------- > sofia 3G dialog filter == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 179
    aget v2, p2, v0

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 180
    .local v0, "filter":Z
    :cond_0
    sget-boolean v2, Lcom/syu/utils/W3Utils;->mHasFilter:Z

    if-eq v0, v2, :cond_1

    .line 181
    sput-boolean v0, Lcom/syu/utils/W3Utils;->mHasFilter:Z

    .line 184
    :cond_1
    array-length v2, p2

    if-le v2, v1, :cond_2

    .line 185
    aget v1, p2, v1

    sput v1, Lcom/syu/utils/W3Utils;->maxCount:I

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/syu/utils/W3Utils;->clean()V

    .line 189
    .end local v0    # "filter":Z
    :cond_3
    return-void
.end method

.method saveRunCount(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 160
    if-gez p2, :cond_0

    const/4 p2, -0x1

    .line 167
    .end local p2    # "count":I
    :goto_0
    return p2

    .line 161
    .restart local p2    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "old":I
    if-eq v0, p2, :cond_1

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    move p2, v0

    .line 167
    goto :goto_0
.end method

.method setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "mDialog"    # Landroid/app/Dialog;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/syu/utils/W3Utils;->mDialog:Landroid/app/Dialog;

    .line 152
    return-void
.end method

.method public varargs startActivitySafely(Landroid/content/Intent;[I)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # [I

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "success":Z
    iget-object v3, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 197
    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    .line 198
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 207
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/syu/utils/W3Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    const/4 v2, 0x1

    .line 215
    :cond_0
    :goto_2
    return v2

    .line 198
    :cond_1
    aget v1, p2, v3

    .line 199
    .local v1, "flag":I
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "flag":I
    :cond_2
    const/high16 v3, 0x10200000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 211
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public varargs startActivitySafelyForAction(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "flags"    # [I

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "success":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 226
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/syu/utils/W3Utils;->startActivitySafely(Landroid/content/Intent;[I)Z

    move-result v1

    .line 229
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return v1
.end method

.method public varargs startActivitySafelyForComponentName(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 7
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "flags"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "success":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v1, v2

    .line 238
    .local v1, "hasClazz":Z
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 239
    .local v2, "hasPkg":Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 240
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v3, p3}, Lcom/syu/utils/W3Utils;->startActivitySafely(Landroid/content/Intent;[I)Z

    move-result v4

    .line 245
    .end local v0    # "c":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return v4

    .end local v1    # "hasClazz":Z
    .end local v2    # "hasPkg":Z
    :cond_1
    move v1, v5

    .line 237
    goto :goto_0

    .restart local v1    # "hasClazz":Z
    :cond_2
    move v2, v5

    .line 238
    goto :goto_1
.end method
