.class Lcom/android/launcher4/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final synthetic val$folders:Ljava/util/HashMap;

.field private final synthetic val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->val$folders:Ljava/util/HashMap;

    .line 2544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2546
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;

    move-result-object v0

    .line 2547
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;->val$folders:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindFolders(Ljava/util/HashMap;)V

    .line 2550
    :cond_0
    return-void
.end method
