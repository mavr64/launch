.class Lcom/android/launcher4/Launcher$21;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$localeConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/lang/String;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$21;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$21;->val$localeConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .line 1066
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/launcher4/Launcher$21;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$21;->val$localeConfiguration:Lcom/android/launcher4/Launcher$LocaleConfiguration;

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$80(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    .line 1070
    return-void
.end method
