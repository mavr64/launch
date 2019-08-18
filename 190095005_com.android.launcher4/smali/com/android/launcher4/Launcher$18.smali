.class Lcom/android/launcher4/Launcher$18;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$18;->this$0:Lcom/android/launcher4/Launcher;

    .line 8696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8698
    iget-object v0, p0, Lcom/android/launcher4/Launcher$18;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$18;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$62(Lcom/android/launcher4/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->bindPackagesUpdated(Ljava/util/ArrayList;)V

    .line 8699
    iget-object v0, p0, Lcom/android/launcher4/Launcher$18;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$63(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;)V

    .line 8700
    return-void
.end method
