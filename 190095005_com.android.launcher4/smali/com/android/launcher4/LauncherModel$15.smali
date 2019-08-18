.class Lcom/android/launcher4/LauncherModel$15;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher4/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;

.field private final synthetic val$cname:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$15;->this$0:Lcom/android/launcher4/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$15;->val$cname:Landroid/content/ComponentName;

    .line 3217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$15;->val$cname:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
