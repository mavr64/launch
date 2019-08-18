.class Lcom/android/launcher4/Launcher$96;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->finishBindingItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$upgradePath:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$96;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher4/Launcher$96;->val$upgradePath:Z

    .line 8526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8528
    iget-object v0, p0, Lcom/android/launcher4/Launcher$96;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher4/Launcher$96;->val$upgradePath:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->finishBindingItems(Z)V

    .line 8529
    return-void
.end method
