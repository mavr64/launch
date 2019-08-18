.class Lcom/android/launcher4/Launcher$19;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->showWeatherInfo()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherChanged(Lcom/syu/weather/WeatherDescription;)V
    .locals 3
    .param p1, "weather"    # Lcom/syu/weather/WeatherDescription;

    .prologue
    .line 866
    if-nez p1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    const-string v0, "hy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showWeatherInfoweatherImg"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$71(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$71(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$71(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getWeather()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-static {v1, v2}, Lcom/syu/util/WeatherUtils;->getWeatherImagId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 876
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$72(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$72(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$73(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$73(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$74(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 883
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$74(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getCurTem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$75(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 886
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$75(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getWind()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$76(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/launcher4/Launcher$19;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$76(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->getTemDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
