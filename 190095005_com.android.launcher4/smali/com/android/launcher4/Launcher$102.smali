.class Lcom/android/launcher4/Launcher$102;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->dismissCling(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$cling:Lcom/android/launcher4/Cling;

.field private final synthetic val$flag:Ljava/lang/String;

.field private final synthetic val$postAnimationCb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$102;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$102;->val$cling:Lcom/android/launcher4/Cling;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$102;->val$postAnimationCb:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/launcher4/Launcher$102;->val$flag:Ljava/lang/String;

    .line 8950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Launcher$102;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 8950
    iget-object v0, p0, Lcom/android/launcher4/Launcher$102;->this$0:Lcom/android/launcher4/Launcher;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8952
    iget-object v0, p0, Lcom/android/launcher4/Launcher$102;->val$cling:Lcom/android/launcher4/Cling;

    invoke-virtual {v0}, Lcom/android/launcher4/Cling;->cleanup()V

    .line 8955
    new-instance v0, Lcom/android/launcher4/Launcher$102$1;

    const-string v1, "dismissClingThread"

    iget-object v2, p0, Lcom/android/launcher4/Launcher$102;->val$flag:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher4/Launcher$102$1;-><init>(Lcom/android/launcher4/Launcher$102;Ljava/lang/String;Ljava/lang/String;)V

    .line 8962
    invoke-virtual {v0}, Lcom/android/launcher4/Launcher$102$1;->start()V

    .line 8963
    iget-object v0, p0, Lcom/android/launcher4/Launcher$102;->val$postAnimationCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 8964
    iget-object v0, p0, Lcom/android/launcher4/Launcher$102;->val$postAnimationCb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8966
    :cond_0
    return-void
.end method
