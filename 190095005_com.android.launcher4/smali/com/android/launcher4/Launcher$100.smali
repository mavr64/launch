.class Lcom/android/launcher4/Launcher$100;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->unlockScreenOrientation(Z)V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$100;->this$0:Lcom/android/launcher4/Launcher;

    .line 8767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8769
    iget-object v0, p0, Lcom/android/launcher4/Launcher$100;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->setRequestedOrientation(I)V

    .line 8770
    return-void
.end method
