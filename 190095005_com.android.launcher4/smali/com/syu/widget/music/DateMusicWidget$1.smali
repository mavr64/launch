.class Lcom/syu/widget/music/DateMusicWidget$1;
.super Ljava/lang/Object;
.source "DateMusicWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/widget/music/DateMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/widget/music/DateMusicWidget;


# direct methods
.method constructor <init>(Lcom/syu/widget/music/DateMusicWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/widget/music/DateMusicWidget$1;->this$0:Lcom/syu/widget/music/DateMusicWidget;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v0}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 67
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method
