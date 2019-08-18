.class Lcom/android/launcher4/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->unbindWorkspaceItemsOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;

.field private final synthetic val$tmpAppWidgets:Ljava/util/ArrayList;

.field private final synthetic val$tmpWorkspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$5;->this$0:Lcom/android/launcher4/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$5;->val$tmpWorkspaceItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$5;->val$tmpAppWidgets:Ljava/util/ArrayList;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$5;->val$tmpWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$5;->val$tmpAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 565
    return-void

    .line 559
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 560
    .local v0, "item":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher4/ItemInfo;->unbind()V

    goto :goto_0

    .line 562
    .end local v0    # "item":Lcom/android/launcher4/ItemInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 563
    .restart local v0    # "item":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher4/ItemInfo;->unbind()V

    goto :goto_1
.end method
