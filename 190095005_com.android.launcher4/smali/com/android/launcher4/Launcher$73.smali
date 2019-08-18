.class Lcom/android/launcher4/Launcher$73;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$73;->this$0:Lcom/android/launcher4/Launcher;

    .line 4156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 4160
    iget-object v0, p0, Lcom/android/launcher4/Launcher$73;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 4162
    const/16 v1, 0x14

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xb

    aput v3, v2, v4

    .line 4160
    invoke-virtual {v0, v4, v1, v2}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 4163
    return-void
.end method
