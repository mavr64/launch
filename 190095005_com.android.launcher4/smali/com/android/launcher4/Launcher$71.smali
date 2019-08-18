.class Lcom/android/launcher4/Launcher$71;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$71;->this$0:Lcom/android/launcher4/Launcher;

    .line 4122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4126
    iget-object v0, p0, Lcom/android/launcher4/Launcher$71;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4127
    iget-object v0, p0, Lcom/android/launcher4/Launcher$71;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4128
    iget-object v0, p0, Lcom/android/launcher4/Launcher$71;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 4130
    new-array v1, v2, [I

    .line 4131
    const/4 v2, 0x2

    aput v2, v1, v3

    .line 4129
    invoke-virtual {v0, v3, v4, v1}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 4139
    :cond_0
    :goto_0
    return-void

    .line 4133
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$71;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 4135
    new-array v1, v2, [I

    .line 4136
    aput v2, v1, v3

    .line 4134
    invoke-virtual {v0, v3, v4, v1}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto :goto_0
.end method
