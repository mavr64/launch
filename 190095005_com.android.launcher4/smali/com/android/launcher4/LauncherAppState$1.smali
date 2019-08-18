.class Lcom/android/launcher4/LauncherAppState$1;
.super Landroid/database/ContentObserver;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherAppState;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherAppState;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherAppState$1;->this$0:Lcom/android/launcher4/LauncherAppState;

    .line 148
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState$1;->this$0:Lcom/android/launcher4/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher4/LauncherAppState;->access$0(Lcom/android/launcher4/LauncherAppState;)Lcom/android/launcher4/LauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/LauncherModel;->resetLoadedState(ZZ)V

    .line 154
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppState$1;->this$0:Lcom/android/launcher4/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher4/LauncherAppState;->access$0(Lcom/android/launcher4/LauncherAppState;)Lcom/android/launcher4/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel;->startLoaderFromBackground()V

    .line 155
    return-void
.end method
