.class Lcom/android/launcher4/Launcher$95;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$item:Lcom/android/launcher4/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$95;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$95;->val$item:Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 8476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8478
    iget-object v0, p0, Lcom/android/launcher4/Launcher$95;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$95;->val$item:Lcom/android/launcher4/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->bindAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 8479
    return-void
.end method
