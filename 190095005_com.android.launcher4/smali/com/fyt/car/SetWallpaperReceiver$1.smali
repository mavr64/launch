.class Lcom/fyt/car/SetWallpaperReceiver$1;
.super Ljava/lang/Object;
.source "SetWallpaperReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/car/SetWallpaperReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/car/SetWallpaperReceiver;


# direct methods
.method constructor <init>(Lcom/fyt/car/SetWallpaperReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/car/SetWallpaperReceiver$1;->this$0:Lcom/fyt/car/SetWallpaperReceiver;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/fyt/car/SetWallpaperReceiver$1;->this$0:Lcom/fyt/car/SetWallpaperReceiver;

    invoke-static {v0}, Lcom/fyt/car/SetWallpaperReceiver;->access$0(Lcom/fyt/car/SetWallpaperReceiver;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->setDefaultWallpaper()V

    goto :goto_0
.end method
