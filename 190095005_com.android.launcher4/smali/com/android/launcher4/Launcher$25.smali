.class Lcom/android/launcher4/Launcher$25;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->activeWindow()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$25;->this$0:Lcom/android/launcher4/Launcher;

    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/launcher4/Launcher$25;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/Launcher;->activestep:Z

    .line 1574
    return-void
.end method
