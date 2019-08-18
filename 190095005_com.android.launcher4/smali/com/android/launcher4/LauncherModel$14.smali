.class Lcom/android/launcher4/LauncherModel$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher4/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->getItemInfoForPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;

.field private final synthetic val$pn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$14;->this$0:Lcom/android/launcher4/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$14;->val$pn:Ljava/lang/String;

    .line 3205
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
    .line 3209
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$14;->val$pn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
