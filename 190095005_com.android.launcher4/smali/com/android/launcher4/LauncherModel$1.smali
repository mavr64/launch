.class Lcom/android/launcher4/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$1;->this$0:Lcom/android/launcher4/LauncherModel;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$1;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$0(Lcom/android/launcher4/LauncherModel;)V

    .line 271
    return-void
.end method
