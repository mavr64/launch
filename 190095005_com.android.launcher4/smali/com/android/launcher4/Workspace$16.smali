.class Lcom/android/launcher4/Workspace$16;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher4/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->removeItemsByPackageName(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$cns:Ljava/util/HashSet;

.field private final synthetic val$packageNames:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$16;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$16;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher4/Workspace$16;->val$cns:Ljava/util/HashSet;

    .line 4986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "parent"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 4990
    iget-object v0, p0, Lcom/android/launcher4/Workspace$16;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4991
    iget-object v0, p0, Lcom/android/launcher4/Workspace$16;->val$cns:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4992
    const/4 v0, 0x1

    .line 4994
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
