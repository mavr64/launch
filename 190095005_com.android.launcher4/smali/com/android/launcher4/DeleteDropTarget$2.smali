.class Lcom/android/launcher4/DeleteDropTarget$2;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->completeDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$componentName:Landroid/content/ComponentName;

.field private final synthetic val$dragSource:Lcom/android/launcher4/DragSource;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;Landroid/content/ComponentName;Lcom/android/launcher4/DragSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$2;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$dragSource:Lcom/android/launcher4/DragSource;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    invoke-static {v3, v2}, Lcom/android/launcher4/DeleteDropTarget;->access$1(Lcom/android/launcher4/DeleteDropTarget;Z)V

    .line 340
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    invoke-virtual {v3}, Lcom/android/launcher4/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/launcher4/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 344
    .local v2, "uninstallSuccessful":Z
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$dragSource:Lcom/android/launcher4/DragSource;

    instance-of v3, v3, Lcom/android/launcher4/Folder;

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$dragSource:Lcom/android/launcher4/DragSource;

    check-cast v3, Lcom/android/launcher4/Folder;

    .line 346
    invoke-virtual {v3, v2}, Lcom/android/launcher4/Folder;->onUninstallActivityReturned(Z)V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$dragSource:Lcom/android/launcher4/DragSource;

    instance-of v3, v3, Lcom/android/launcher4/Workspace;

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/android/launcher4/DeleteDropTarget$2;->val$dragSource:Lcom/android/launcher4/DragSource;

    check-cast v3, Lcom/android/launcher4/Workspace;

    .line 349
    invoke-virtual {v3, v2}, Lcom/android/launcher4/Workspace;->onUninstallActivityReturned(Z)V

    goto :goto_0
.end method
