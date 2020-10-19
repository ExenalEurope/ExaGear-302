.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateMouseWarpToFingerLastCoords.java"


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private final pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 34
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 35
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getTouchArea()Lcom/eltechs/axs/TouchArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea;->getLastFingerAction()Lcom/eltechs/axs/TouchArea$FingerAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea$FingerAction;->getFinger()Lcom/eltechs/axs/Finger;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    .line 44
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V

    .line 47
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
