module creator.viewport.common.mesheditor.tools.base;

import i18n;
import creator.viewport;
import creator.viewport.common;
import creator.viewport.common.mesh;
import creator.viewport.common.mesheditor.operations;
import creator.viewport.common.spline;
import creator.core.input;
import creator.core.actionstack;
import creator.actions;
import creator.ext;
import creator.widgets;
import creator;
import inochi2d;
import inochi2d.core.dbg;
import bindbc.opengl;
import bindbc.imgui;
import std.algorithm.mutation;
import std.algorithm.searching;
import std.stdio;


interface Tool {
    int peek(ImGuiIO* io, IncMeshEditorOne impl);
    int unify(int[] actions);
    bool update(ImGuiIO* io, IncMeshEditorOne impl, int action, out bool changed);
    void setToolMode(VertexToolMode toolMode, IncMeshEditorOne impl);
    void draw(Camera camera, IncMeshEditorOne impl);
}


interface Draggable {
    bool onDragStart(vec2 mousePos, IncMeshEditorOne impl);
    bool onDragUpdate(vec2 mousePos, IncMeshEditorOne impl);
    bool onDragEnd(vec2 mousePos, IncMeshEditorOne impl);
}