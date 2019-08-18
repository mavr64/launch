.class Lcom/android/launcher4/Launcher$69;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindOnclickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$69;->this$0:Lcom/android/launcher4/Launcher;

    .line 4092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4098
    iget-object v0, p0, Lcom/android/launcher4/Launcher$69;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 4099
    const-string v2, "com.syu.music"

    .line 4098
    invoke-static {v1, v2}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4099
    const-string v2, "bt"

    .line 4098
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 4100
    return-void
.end method
