.class Lcom/android/launcher4/Launcher$70;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$70;->this$0:Lcom/android/launcher4/Launcher;

    .line 4105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4110
    const-string v1, "com.autonavi.amapauto"

    .line 4112
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4113
    .local v0, "launchIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 4114
    const-string v3, "com.autonavi.auto.remote.fill.UsbFillActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4116
    iget-object v2, p0, Lcom/android/launcher4/Launcher$70;->this$0:Lcom/android/launcher4/Launcher;

    const-string v3, "bt"

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 4117
    return-void
.end method
