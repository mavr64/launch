.class Lcom/android/launcher4/Launcher$50;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->initViews()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$50;->this$0:Lcom/android/launcher4/Launcher;

    .line 3689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3692
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/RechargeDialogFragment;->editRecharge(Lcom/android/launcher4/Launcher;)V

    .line 3693
    const/4 v0, 0x1

    return v0
.end method
