.class Lcom/android/launcher4/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/fyt/car/IUiRefresher;


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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$8;->this$0:Lcom/android/launcher4/Launcher;

    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh([I[J[F[Ljava/lang/String;[B)V
    .locals 1
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/launcher4/Launcher$8;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->handleNaviState()V

    .line 1928
    return-void
.end method
