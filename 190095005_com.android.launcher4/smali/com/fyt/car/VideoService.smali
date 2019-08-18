.class public Lcom/fyt/car/VideoService;
.super Landroid/app/Service;
.source "VideoService.java"


# static fields
.field public static CURMINUTES:J = 0x0L

.field public static final LAUNCHERVIDEO:Ljava/lang/String; = "com.fyt.launcher.video"

.field public static final MUSIC_PKG:Ljava/lang/String; = "com.syu.music"

.field public static final NEXTSERVICE:Ljava/lang/String; = "com.syu.music.next"

.field public static final PLAYSERVICE:Ljava/lang/String; = "com.syu.music.playpause"

.field public static final PLAY_ALBUM:Ljava/lang/String; = "play_album"

.field public static final PLAY_ALBUMPIC:Ljava/lang/String; = "play_alubm_pic"

.field public static final PLAY_ARTIST:Ljava/lang/String; = "play_artist"

.field public static final PLAY_CURMINUTES:Ljava/lang/String; = "play_cur"

.field public static final PLAY_STATE:Ljava/lang/String; = "play_state"

.field public static final PLAY_TOTALMINUTES:Ljava/lang/String; = "play_total"

.field public static final PRESERVICE:Ljava/lang/String; = "com.syu.music.prev"

.field public static final REMOVE_MUSIC:Ljava/lang/String; = "com.fyt.systemui.remove"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static TOTALMINUTES:J

.field public static album:Ljava/lang/String;

.field public static album_cover:[B

.field public static author_name:Ljava/lang/String;

.field public static music_name:Ljava/lang/String;

.field public static state:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/VideoService;->music_name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/VideoService;->author_name:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/VideoService;->state:Ljava/lang/Boolean;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/VideoService;->album:Ljava/lang/String;

    .line 26
    sput-wide v2, Lcom/fyt/car/VideoService;->TOTALMINUTES:J

    .line 27
    sput-wide v2, Lcom/fyt/car/VideoService;->CURMINUTES:J

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "action":Ljava/lang/String;
    const-string v0, "com.fyt.launcher.video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 48
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "play_state"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/VideoService;->state:Ljava/lang/Boolean;

    .line 50
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_VIDEO:Lcom/fyt/car/DataNotifier;

    new-array v2, v10, [J

    sget-wide v4, Lcom/fyt/car/VideoService;->CURMINUTES:J

    aput-wide v4, v2, v8

    sget-wide v4, Lcom/fyt/car/VideoService;->TOTALMINUTES:J

    aput-wide v4, v2, v9

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    .line 51
    sget-object v3, Lcom/fyt/car/VideoService;->state:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v8

    sget-object v3, Lcom/fyt/car/VideoService;->author_name:Ljava/lang/String;

    aput-object v3, v4, v9

    sget-object v3, Lcom/fyt/car/VideoService;->music_name:Ljava/lang/String;

    aput-object v3, v4, v10

    move-object v3, v1

    move-object v5, v1

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 54
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
