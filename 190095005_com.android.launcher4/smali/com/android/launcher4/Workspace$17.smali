.class Lcom/android/launcher4/Workspace$17;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher4/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$children:Ljava/util/HashMap;

.field private final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field private final synthetic val$componentNames:Ljava/util/HashSet;

.field private final synthetic val$folderAppsToRemove:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$17;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$17;->val$componentNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher4/Workspace$17;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/launcher4/Workspace$17;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher4/Workspace$17;->val$children:Ljava/util/HashMap;

    .line 5036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "parent"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x1

    .line 5040
    instance-of v2, p1, Lcom/android/launcher4/FolderInfo;

    if-eqz v2, :cond_1

    .line 5041
    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 5042
    check-cast v1, Lcom/android/launcher4/FolderInfo;

    .line 5044
    .local v1, "folder":Lcom/android/launcher4/FolderInfo;
    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5045
    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5050
    .local v0, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    :goto_0
    check-cast p2, Lcom/android/launcher4/ShortcutInfo;

    .end local p2    # "info":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 5059
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher4/FolderInfo;
    :goto_1
    return v2

    .line 5047
    .restart local v1    # "folder":Lcom/android/launcher4/FolderInfo;
    .restart local p2    # "info":Lcom/android/launcher4/ItemInfo;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5048
    .restart local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5054
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher4/FolderInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5055
    iget-object v4, p0, Lcom/android/launcher4/Workspace$17;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher4/Workspace$17;->val$children:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 5056
    goto :goto_1

    .line 5059
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
