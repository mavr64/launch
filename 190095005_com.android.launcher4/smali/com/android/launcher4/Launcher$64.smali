.class Lcom/android/launcher4/Launcher$64;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$64;->this$0:Lcom/android/launcher4/Launcher;

    .line 4021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4027
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4028
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.syu.bt.byav.widgetPrev"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4029
    const-string v1, "com.syu.bt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4030
    iget-object v1, p0, Lcom/android/launcher4/Launcher$64;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4031
    return-void
.end method
