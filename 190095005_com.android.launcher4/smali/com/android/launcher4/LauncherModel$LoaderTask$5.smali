.class Lcom/android/launcher4/LauncherModel$LoaderTask$5;
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

.field private final synthetic val$chunkSize:I

.field private final synthetic val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

.field private final synthetic val$start:I

.field private final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$start:I

    iput p5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$chunkSize:I

    .line 2525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2528
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;

    move-result-object v0

    .line 2529
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 2530
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$start:I

    iget v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$start:I

    .line 2531
    iget v4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;->val$chunkSize:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 2530
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 2533
    :cond_0
    return-void
.end method
