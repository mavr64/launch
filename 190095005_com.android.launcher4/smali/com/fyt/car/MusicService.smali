.class public Lcom/fyt/car/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"


# static fields
.field public static CURMINUTES:J = 0x0L

.field public static final MUSICSERVICE:Ljava/lang/String; = "com.fyt.launcher.music"

.field public static final MUSIC_PKG:Ljava/lang/String; = "com.syu.music"

.field public static final NEXTMUSIC:Ljava/lang/String; = "com.syu.music.next"

.field public static final PLAYPAUSEMUSIC:Ljava/lang/String; = "com.syu.music.playpause"

.field public static final PLAY_ALBUM:Ljava/lang/String; = "play_album"

.field public static final PLAY_ARTIST:Ljava/lang/String; = "play_artist"

.field public static final PLAY_CURMINUTES:Ljava/lang/String; = "play_cur"

.field public static final PLAY_PATH:Ljava/lang/String; = "play_path"

.field public static final PLAY_STATE:Ljava/lang/String; = "play_state"

.field public static final PLAY_TOTALMINUTES:Ljava/lang/String; = "play_total"

.field public static final PREVMUSIC:Ljava/lang/String; = "com.syu.music.prev"

.field public static final REMOVE_MUSIC:Ljava/lang/String; = "com.fyt.systemui.remove"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static TOTALMINUTES:J

.field public static album:Ljava/lang/String;

.field public static album_cover:[B

.field public static author_name:Ljava/lang/String;

.field public static music_name:Ljava/lang/String;

.field public static music_path:Ljava/lang/String;

.field public static state:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/MusicService;->music_name:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/MusicService;->album:Ljava/lang/String;

    .line 40
    sput-wide v2, Lcom/fyt/car/MusicService;->TOTALMINUTES:J

    .line 41
    sput-wide v2, Lcom/fyt/car/MusicService;->CURMINUTES:J

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "action":Ljava/lang/String;
    const-string v0, "com.fyt.launcher.music"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 58
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "play_total"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/fyt/car/MusicService;->TOTALMINUTES:J

    .line 59
    const-string v0, "play_cur"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/fyt/car/MusicService;->CURMINUTES:J

    .line 60
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->music_name:Ljava/lang/String;

    .line 61
    const-string v0, "play_artist"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    .line 62
    const-string v0, "play_path"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    .line 63
    const-string v0, "play_state"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    .line 65
    const-string v0, "play_album"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "play_album"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyt/car/MusicService;->album:Ljava/lang/String;

    .line 90
    :goto_1
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v0}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 102
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 68
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v0, ""

    sput-object v0, Lcom/fyt/car/MusicService;->album:Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_3
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

    new-array v2, v10, [J

    sget-wide v4, Lcom/fyt/car/MusicService;->TOTALMINUTES:J

    aput-wide v4, v2, v8

    sget-wide v4, Lcom/fyt/car/MusicService;->CURMINUTES:J

    aput-wide v4, v2, v9

    .line 94
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    sget-object v3, Lcom/fyt/car/MusicService;->music_name:Ljava/lang/String;

    aput-object v3, v4, v8

    sget-object v3, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    aput-object v3, v4, v9

    sget-object v3, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    const/4 v3, 0x3

    sget-object v5, Lcom/fyt/car/MusicService;->album:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x4

    sget-object v5, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 95
    sget-object v5, Lcom/fyt/car/MusicService;->album_cover:[B

    move-object v3, v1

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    goto :goto_2
.end method
