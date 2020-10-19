.class public Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;
.super Ljava/lang/Object;
.source "BasicStrategiesUI.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# instance fields
.field private additionalMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/AbstractAction;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/TouchScreenControlsFactory;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->additionalMenuItems:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 3

    .line 49
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 52
    new-instance v0, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v0}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    .line 54
    invoke-virtual {v0}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->isHorizontalStretchEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v0, Lcom/eltechs/axs/activities/menus/ShowKeyboard;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/menus/ShowKeyboard;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/eltechs/axs/activities/menus/ShowUsage;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/menus/ShowUsage;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->additionalMenuItems:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance v0, Lcom/eltechs/axs/activities/menus/Quit;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/menus/Quit;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    .line 66
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    return-object p1
.end method

.method public detach()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    return-void
.end method

.method public setAdditionalMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/AbstractAction;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BasicStrategiesUI;->additionalMenuItems:Ljava/util/List;

    return-void
.end method
