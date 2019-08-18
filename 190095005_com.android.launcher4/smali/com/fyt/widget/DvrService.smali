.class public Lcom/fyt/widget/DvrService;
.super Landroid/app/Service;
.source "DvrService.java"


# static fields
.field public static CURMINUTES:J = 0x0L

.field public static final LAUNCHERDVR:Ljava/lang/String; = "com.fyt.launcher.dvr"

.field public static final MUSIC_PKG:Ljava/lang/String; = "com.syu.music"

.field public static final NEXTSERVICE:Ljava/lang/String; = "com.syu.music.next"

.field public static final PLAYSERVICE:Ljava/lang/String; = "com.syu.music.playpause"

.field public static final PLAY_ALBUM:Ljava/lang/String; = "play_album"

.field public static final PLAY_ALBUMPIC:Ljava/lang/String; = "play_alubm_pic"

.field public static final PLAY_ARTIST:Ljava/lang/String; = "play_artist"

.field public static final PLAY_CURMINUTES:Ljava/lang/String; = "play_cur"

.field public static final PLAY_TOTALMINUTES:Ljava/lang/String; = "play_total"

.field public static final PRESERVICE:Ljava/lang/String; = "com.syu.music.prev"

.field public static final REC_STATE:Ljava/lang/String; = "DVR"

.field public static final REMOVE_MUSIC:Ljava/lang/String; = "com.fyt.systemui.remove"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static TOTALMINUTES:J

.field public static album:Ljava/lang/String;

.field public static album_cover:[B

.field public static author_name:Ljava/lang/String;

.field public static music_name:Ljava/lang/String;

.field public static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/fyt/widget/DvrService;->music_name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/fyt/widget/DvrService;->author_name:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/fyt/widget/DvrService;->state:I

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/fyt/widget/DvrService;->album:Ljava/lang/String;

    .line 30
    sput-wide v2, Lcom/fyt/widget/DvrService;->TOTALMINUTES:J

    .line 31
    sput-wide v2, Lcom/fyt/widget/DvrService;->CURMINUTES:J

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 58
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "action":Ljava/lang/String;
    const-string v0, "com.fyt.launcher.dvr"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 52
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "DVR"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyt/widget/DvrService;->state:I

    .line 54
    const-string v0, "hy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "state"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/fyt/widget/DvrService;->state:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_DVR:Lcom/fyt/car/DataNotifier;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    sget v4, Lcom/fyt/widget/DvrService;->state:I

    aput v4, v1, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 58
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
