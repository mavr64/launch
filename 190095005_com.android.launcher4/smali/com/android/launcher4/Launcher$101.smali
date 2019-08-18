.class Lcom/android/launcher4/Launcher$101;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->dismissClingApp(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$cling:Lcom/android/launcher4/Cling;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$postAnimationCb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$101;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$101;->val$cling:Lcom/android/launcher4/Cling;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$101;->val$postAnimationCb:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/launcher4/Launcher$101;->val$intent:Landroid/content/Intent;

    .line 8842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8844
    iget-object v0, p0, Lcom/android/launcher4/Launcher$101;->val$cling:Lcom/android/launcher4/Cling;

    invoke-virtual {v0}, Lcom/android/launcher4/Cling;->cleanup()V

    .line 8847
    new-instance v0, Lcom/android/launcher4/Launcher$101$1;

    const-string v1, "dismissClingThread"

    iget-object v2, p0, Lcom/android/launcher4/Launcher$101;->val$intent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher4/Launcher$101$1;-><init>(Lcom/android/launcher4/Launcher$101;Ljava/lang/String;Landroid/content/Intent;)V

    .line 8925
    invoke-virtual {v0}, Lcom/android/launcher4/Launcher$101$1;->start()V

    .line 8926
    iget-object v0, p0, Lcom/android/launcher4/Launcher$101;->val$postAnimationCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 8927
    iget-object v0, p0, Lcom/android/launcher4/Launcher$101;->val$postAnimationCb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8929
    :cond_0
    return-void
.end method
