.class public final enum Lcom/android/settings/widget/InnerExpandableLayout$State;
.super Ljava/lang/Enum;
.source "InnerExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/InnerExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/InnerExpandableLayout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/widget/InnerExpandableLayout$State;

.field public static final enum STATE_COLLAPSE:Lcom/android/settings/widget/InnerExpandableLayout$State;

.field public static final enum STATE_EXPAND:Lcom/android/settings/widget/InnerExpandableLayout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 223
    new-instance v0, Lcom/android/settings/widget/InnerExpandableLayout$State;

    const/4 v1, 0x0

    const-string v2, "STATE_COLLAPSE"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/InnerExpandableLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_COLLAPSE:Lcom/android/settings/widget/InnerExpandableLayout$State;

    new-instance v0, Lcom/android/settings/widget/InnerExpandableLayout$State;

    const/4 v2, 0x1

    const-string v3, "STATE_EXPAND"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/widget/InnerExpandableLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_EXPAND:Lcom/android/settings/widget/InnerExpandableLayout$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/widget/InnerExpandableLayout$State;

    .line 222
    sget-object v3, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_COLLAPSE:Lcom/android/settings/widget/InnerExpandableLayout$State;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_EXPAND:Lcom/android/settings/widget/InnerExpandableLayout$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->$VALUES:[Lcom/android/settings/widget/InnerExpandableLayout$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/InnerExpandableLayout$State;
    .locals 1

    .line 222
    const-class v0, Lcom/android/settings/widget/InnerExpandableLayout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/InnerExpandableLayout$State;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/InnerExpandableLayout$State;
    .locals 1

    .line 222
    sget-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->$VALUES:[Lcom/android/settings/widget/InnerExpandableLayout$State;

    invoke-virtual {v0}, [Lcom/android/settings/widget/InnerExpandableLayout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/InnerExpandableLayout$State;

    return-object v0
.end method
